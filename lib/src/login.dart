import 'dart:io';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:lib_smilingschool/src/api_base.dart';

enum HttpMethod { get, post, put, delete, patch, option }

class CookieFixer extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if ((response.headers[HttpHeaders.setCookieHeader]?.first ?? "")
        .contains("alehÃ¼b1")) {
      var newRs = response;
      var valRemove =
          response.headers[HttpHeaders.setCookieHeader]?.first ?? "";
      newRs.headers.remove(HttpHeaders.setCookieHeader, valRemove);
      return handler.resolve(newRs);
    }
    return super.onResponse(response, handler);
  }
}

class _Login {
  Dio? client;
  final cookieJar = CookieJar();

  void _loginInit() {
    client = Dio();
    client?.options = BaseOptions(
        contentType: Headers.formUrlEncodedContentType,
        followRedirects: false,
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
        headers: {
          "User-Agent":
              "Mozilla/5.0 (X11; Linux x86_64; rv:129.0) Gecko/20100101 Firefox/129.0",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/png,image/svg+xml,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate, br",
          "Referer": "https://infomentor.se/",
          "Upgrade-Insecure-Requests": "1",
          "Sec-Fetch-Dest": "document",
          "Sec-Fetch-Mode": "navigate",
          "Sec-Fetch-Site": "same-site",
          "Sec-Fetch-User": "?1",
          "Priority": "u=0, i",
          "Te": "trailers"
        });

    // Interceptor to remove specific cookie which makes lib crash
    client?.interceptors.add(CookieFixer());
    client?.interceptors.add(CookieManager(cookieJar));
  }

  // Function to resolve redirects and cookies because for some reason dio doesnt do this by default?
  Future<Response<dynamic>> _resolveRedirect(Response<dynamic>? request,
      HttpMethod method, Map<String, String?>? postData, String? host) async {
    // In case passed response/request isnt a redirect
    if (!((request?.statusCode ?? 404) >= 300 &&
        (request?.statusCode ?? 404) <= 399)) {
      return Future.value(request);
    }

    Response<dynamic>? response = request;
    var status = request?.statusCode ?? 302;
    var locationNext =
        response?.headers.value(HttpHeaders.locationHeader) ?? "";

    while (status >= 300 && status <= 399) {
      if (!Uri.parse(locationNext).isAbsolute) {
        if (host == null) {
          throw Exception(
              "URI is not complete and there is no host specified!");
        }
        locationNext =
            "$host${response?.headers.value(HttpHeaders.locationHeader) ?? ""}";
      }
      switch (method) {
        case HttpMethod.post:
          response = await client?.post(locationNext, data: postData);
        case HttpMethod.get:
          response = await client?.get(locationNext);
        default:
      }
      locationNext = response?.headers.value(HttpHeaders.locationHeader) ?? "";
      status = response?.statusCode ?? 302;
    }
    return Future.value(response);
  }
}

class StockholmSTU extends _Login {
  Future<InfoMentor> loginCredentials(String user, String password) async {
    _loginInit();
    var samlResponse = await _loginToSSO(user, password);
    await _loginToIM(samlResponse);
    var imObj = InfoMentor(client: super.client);
    imObj.loggedIn = true;
    return Future.value(imObj);
  }

  Future<String> _loginToSSO(String user, String password) async {
    // Login to Stockholm SSO
    // SamlRESPONSE var
    var samlRs = "";
    Map<String, String?> loginDataDict = {
      "user": user,
      "password": password,
      "SMENC": "",
      "SMLOCALE": "",
      "target": "",
      "smauthreason": "",
      "smagentname": "",
      "smquerydata": "",
      "postpreservationdata": "",
      "submit": ""
    };
    // Login menu page response
    var loginMenuRs = await super
        .client
        ?.get("https://sso.infomentor.se/login.ashx?idp=stockholm_stu");

    // Sadly cookies aren't handled automatically inbetween redirects, so I made a function for it
    loginMenuRs =
        await _resolveRedirect(loginMenuRs, HttpMethod.get, null, null);

    // Use regex to get the login page location with parameters needed
    var extractedLoginPage = RegExp(r"""(")([^"]*)(")""")
        .allMatches(RegExp(r"^.*loginForm.*$", multiLine: true)
                .firstMatch(loginMenuRs.data.toString())?[0] ??
            "")
        .toList();
    // Get login page
    var loginPageRs = await super.client?.get(
        "https://login001.stockholm.se/siteminderagent/forms/${extractedLoginPage[0][2] ?? ""}");

    // Take every form parameter and insert it into our login data object
    for (var value
        in RegExp(r"^.*value.*$", caseSensitive: false, multiLine: true)
            .allMatches(loginPageRs?.data)
            .toList()
            .take(7)) {
      var params = RegExp(
              r"""(?:NAME=([\"']?)([^\s\"']*)\1\s*VALUE=([\"']?)([^\s\"']*)\3)""",
              caseSensitive: false)
          .firstMatch(value[0] ?? "");
      loginDataDict[params?[2] ?? ""] =
          (params?[4] == 'null') ? null : params?[4];
    }

    // Post our login data
    var saml2SSOPageRs = await super.client?.post(
        "https://login001.stockholm.se/siteminderagent/forms/login.fcc",
        data: loginDataDict);
    // Once again handle redirects
    saml2SSOPageRs =
        await _resolveRedirect(saml2SSOPageRs, HttpMethod.get, null, null);

    // FINALLY extract our samlresponse
    var samlLine = RegExp(r"^.*SAMLResponse.*$", multiLine: true)
        .firstMatch(saml2SSOPageRs.data.toString());
    samlRs = RegExp(r"""(?:value=([^\"]*)\"([^\"]*)\")""")
            .firstMatch(samlLine?.group(0) ?? "")
            ?.group(2)
            .toString() ??
        "";

    return Future.value(samlRs);
  }

  Future _loginToIM(String samlresponse) async {
    // Login to Infomentor!

    // Time to post our samlresponse and handle some redirects
    var infomentorLoginPage = await super.client?.post(
        "https://sso.infomentor.se/login.ashx?idp=stockholm_stu",
        data: {"SAMLResponse": samlresponse});

    infomentorLoginPage = await _resolveRedirect(
        infomentorLoginPage, HttpMethod.get, null, 'https://sso.infomentor.se');

    // Extract our oauth token from the page
    var oauthToken = RegExp(r"""(?:value=([^\"]*)\"([^\"]*)\")""")
        .firstMatch(RegExp(r"^.*oauth_token.*$", multiLine: true)
                .firstMatch(infomentorLoginPage.data.toString())
                ?.group(0)
                .toString() ??
            "")
        ?.group(2);

    // Post this to the link which will redirect us to LoginCallback
    var loginCallback = await super.client?.post(
        "https://infomentor.se/swedish/production/mentor/",
        data: {"oauth_token": oauthToken});
    loginCallback = await _resolveRedirect(
        loginCallback, HttpMethod.get, null, 'https://hub.infomentor.se');
    // Login is done
  }
}

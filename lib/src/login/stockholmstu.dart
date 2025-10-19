import 'package:lib_smilingschool/src/login.dart';
import 'package:lib_smilingschool/src/api_base.dart';

class StockholmSTU extends Login {
  Future<InfoMentor> loginCredentials(String user, String password) async {
    loginInit();
    final samlResponse = await _loginToSSO(user, password);
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
        await resolveRedirect(loginMenuRs, HttpMethod.get, null, null);

    // Use regex to get the login page location with parameters needed
    final extractedLoginPage = RegExp(r"""(")([^"]*)(")""")
        .allMatches(RegExp(r"^.*loginForm.*$", multiLine: true)
                .firstMatch(loginMenuRs.data.toString())?[0] ??
            "")
        .toList();
    // Get login page
    final loginPageRs = await super.client?.get(
        "https://login001.stockholm.se/siteminderagent/forms/${extractedLoginPage[0][2] ?? ""}");

    // Take every form parameter and insert it into our login data object
    for (var value
        in RegExp(r"^.*value.*$", caseSensitive: false, multiLine: true)
            .allMatches(loginPageRs?.data)
            .toList()
            .take(7)) {
      final params = RegExp(
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
        await resolveRedirect(saml2SSOPageRs, HttpMethod.get, null, null);

    // FINALLY extract our samlresponse
    final samlLine = RegExp(r"^.*SAMLResponse.*$", multiLine: true)
        .firstMatch(saml2SSOPageRs.data.toString());
    samlRs = RegExp(r"""(?:value=([^\"]*)\"([^\"]*)\")""")
            .firstMatch(samlLine?.group(0) ?? "")
            ?.group(2)
            .toString() ??
        "";

    return Future.value(samlRs);
  }

  Future<void> _loginToIM(String samlresponse) async {
    // Login to Infomentor!

    // Time to post our samlresponse and handle some redirects
    var infomentorLoginPage = await super.client?.post(
        "https://sso.infomentor.se/login.ashx?idp=stockholm_stu",
        data: {"SAMLResponse": samlresponse});

    infomentorLoginPage = await resolveRedirect(
        infomentorLoginPage, HttpMethod.get, null, 'https://sso.infomentor.se');

    // Extract our oauth token from the page
    final oauthToken = RegExp(r"""(?:value=([^\"]*)\"([^\"]*)\")""")
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
    loginCallback = await resolveRedirect(
        loginCallback, HttpMethod.get, null, 'https://hub.infomentor.se');
    // Login is done
  }
}

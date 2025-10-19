import 'dart:io';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

// Exports
export 'login/stockholmstu.dart';
export 'login/infomentor.dart';

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

class Login {
  Dio? client;
  final cookieJar = CookieJar();

  void loginInit() {
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
  Future<Response<dynamic>> resolveRedirect(Response<dynamic>? request,
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

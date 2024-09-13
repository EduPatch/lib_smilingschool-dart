import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class _Login {
  Dio? client;

  void _loginInit() {
    client = Dio();
    var cookieJar = CookieJar();
    client?.interceptors.add(CookieManager(cookieJar));
  }
}

class StockholmSTU extends _Login {
  Dio? loginCredentials(String user, String password) {
    _loginInit();
    _loginToSSO(user, password).then((value) {
      _loginToIM(value);
    });
    return super.client;
  }

  Future<String> _loginToSSO(String user, String password) async {
    // Login to Stockholm SSO
    var samlrs = "";
    var loginDataDict = {
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
    var rs = await super.client?.get(
        "https://sso.infomentor.se/login.ashx?idp=stockholm_stu",
        options: Options(followRedirects: true));
    var extractedLoginPage = RegExp(r"""(")([^"]*)(")""").allMatches(
        RegExp(r"^.*loginForm.*$")
            .firstMatch(rs?.data.toString() ?? "")
            .toString());
    print(extractedLoginPage);
    print(RegExp(r"""^.*loginForm.*$""").allMatches(rs?.data.toString() ?? ""));
    return Future.value(samlrs);
  }

  void _loginToIM(String samlresponse) {
    // Login to Infomentor!
  }
}

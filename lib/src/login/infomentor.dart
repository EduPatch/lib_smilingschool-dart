import 'package:dio/dio.dart';
import 'package:lib_smilingschool/src/login.dart';
import 'package:lib_smilingschool/src/api_base.dart';

class UserPass extends Login {
  Future<InfoMentor> loginCredentials(String user, String password) async {
    loginInit();
    await _loginToIM(user, password);
    var imObj = InfoMentor(client: super.client);
    imObj.loggedIn = true;
    return Future.value(imObj);
  }

  Future<void> _loginToIM(String user, String pass) async {
    // Time to post our samlresponse and handle some redirects
    var infomentorLoginPortal = await super
        .client
        ?.get("https://infomentor.se/swedish/production/mentor/");
    infomentorLoginPortal = await resolveRedirect(
        infomentorLoginPortal, HttpMethod.get, null, 'https://infomentor.se');
    // Get all the needed formdata needed
    final loginDataRaw = RegExp(
            r'<input\b[^>]*?name="([^"]*?)"[^>]*?value="([^"]*?)"[^>]*?>',
            multiLine: true,
            caseSensitive: false)
        .allMatches(infomentorLoginPortal.data.toString());
    // Building a map for login
    var loginData = {
      for (var v in loginDataRaw)
        v.group(1) ?? "": v.group(2) != null ? v.group(2).toString() : ""
    };

    loginData["login_ascx\$txtNotandanafn"] = user;
    loginData["login_ascx\$txtLykilord"] = pass;

    // Lastly converting to FormData and posting. Took me way to long to realize it wanted formdata.
    // Remember kids, use burp suite, not firefox dev tools :3
    var infomentorLoginPage = await super.client?.post(
        "https://infomentor.se/swedish/production/mentor/",
        data: FormData.fromMap(loginData));

    // Dio needs my fancy pantsy function to redirect
    infomentorLoginPage = await resolveRedirect(
        infomentorLoginPage, HttpMethod.get, null, 'https://hub.infomentor.se');

    // Extract our oauth token from the returned page
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

    // Once again, redirect with fancy function
    loginCallback = await resolveRedirect(
        loginCallback, HttpMethod.get, null, 'https://hub.infomentor.se');

    // Login is finally done
  }
}

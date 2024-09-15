import 'package:dio/dio.dart';

class InfoMentor {
  bool loggedIn = false;
  Dio? client;
  Authentication? authentication;

  InfoMentor({required this.client}) {
    authentication = Authentication(client: client);
  }
}

abstract class BaseAPI {
  Dio? client;

  BaseAPI({required this.client});
}

class Authentication extends BaseAPI {
  Authentication({required super.client});

  Future<bool> isAuthenticated() async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/authentication/authentication/isauthenticated");

    return Future.value(bool.parse(rs?.data.toString() ?? ""));
  }
}

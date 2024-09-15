import 'package:lib_infomentor/src/lib_infomentor_base.dart';

class Authentication extends BaseAPI {
  Authentication({required super.client});

  Future<bool> isAuthenticated() async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/authentication/authentication/isauthenticated");

    return Future.value(bool.parse(rs?.data.toString() ?? ""));
  }
}
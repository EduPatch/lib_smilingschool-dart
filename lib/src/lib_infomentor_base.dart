import 'package:dio/dio.dart';
import 'package:lib_infomentor/src/api/bindings/account.dart';
import 'package:lib_infomentor/src/api/bindings/authentication.dart';

class InfoMentor {
  bool loggedIn = false;
  Dio? client;
  Authentication? authentication;
  Account? account;

  InfoMentor({required this.client}) {
    authentication = Authentication(client: client);
    account = Account(client: client);
  }
}

abstract class BaseAPI {
  Dio? client;

  BaseAPI({required this.client});
}

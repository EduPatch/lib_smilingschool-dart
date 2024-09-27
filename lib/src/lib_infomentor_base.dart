import 'package:dio/dio.dart';
import 'package:lib_infomentor/src/api/bindings/account.dart';
import 'package:lib_infomentor/src/api/bindings/authentication.dart';
import 'package:lib_infomentor/src/api/bindings/notifications.dart';

class InfoMentor {
  bool loggedIn = false;
  Dio? client;
  Authentication? authentication;
  Account? account;
  Notifications? notifications;

  InfoMentor({required this.client}) {
    authentication = Authentication(client: client);
    account = Account(client: client);
    notifications = Notifications(client: client);
  }
}

abstract class BaseAPI {
  Dio? client;

  BaseAPI({required this.client});
}
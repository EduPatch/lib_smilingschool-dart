import 'package:dio/dio.dart';
import 'package:lib_infomentor/src/api/bindings/account.dart';
import 'package:lib_infomentor/src/api/bindings/authentication.dart';
import 'package:lib_infomentor/src/api/bindings/notifications.dart';
import 'package:lib_infomentor/src/api/bindings/resources.dart';
import 'package:lib_infomentor/src/api/bindings/timetable.dart';

class InfoMentor {
  bool loggedIn = false;
  Dio? client;
  Authentication? authentication;
  Account? account;
  Notifications? notifications;
  Timetable? timetable;
  Resource? resource;

  InfoMentor({required this.client}) {
    authentication = Authentication(client: client);
    account = Account(client: client);
    notifications = Notifications(client: client);
    timetable = Timetable(client: client);
    resource = Resource(client: client);
  }
}

abstract class BaseAPI {
  Dio? client;

  BaseAPI({required this.client});
}

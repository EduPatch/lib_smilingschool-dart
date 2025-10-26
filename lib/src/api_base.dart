import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:lib_smilingschool/src/api/bindings/account.dart';
import 'package:lib_smilingschool/src/api/bindings/attendance.dart';
import 'package:lib_smilingschool/src/api/bindings/assessment.dart';
import 'package:lib_smilingschool/src/api/bindings/authentication.dart';
import 'package:lib_smilingschool/src/api/bindings/calendar.dart';
import 'package:lib_smilingschool/src/api/bindings/classlist.dart';
import 'package:lib_smilingschool/src/api/bindings/communication.dart';
import 'package:lib_smilingschool/src/api/bindings/documentation.dart';
import 'package:lib_smilingschool/src/api/bindings/notifications.dart';
import 'package:lib_smilingschool/src/api/bindings/resources.dart';
import 'package:lib_smilingschool/src/api/bindings/timeregistration.dart';
import 'package:lib_smilingschool/src/api/bindings/timetable.dart';
import 'package:lib_smilingschool/src/api/bindings/task.dart';
import 'package:lib_smilingschool/src/api/bindings/uolv2.dart';

export 'api/bindings/account.dart';
export 'api/bindings/attendance.dart';
export 'api/bindings/assessment.dart';
export 'api/bindings/authentication.dart';
export 'api/bindings/calendar.dart';
export 'api/bindings/classlist.dart';
export 'api/bindings/communication.dart';
export 'api/bindings/documentation.dart';
export 'api/bindings/notifications.dart';
export 'api/bindings/resources.dart';
export 'api/bindings/timetable.dart';
export 'api/bindings/task.dart';

class InfoMentor {
  bool loggedIn = false;
  Dio? client;
  DefaultCookieJar cookieJar;
  Authentication? authentication;
  Account? account;
  Notifications? notifications;
  Timetable? timetable;
  Resource? resource;
  Attendance? attendance;
  Communication? communication;
  Documentation? documentation;
  Assessment? assessment;
  Calendar? calendar;
  Classlist? classlist;
  Task? task;
  Timeregistration? timeregistration;
  UolV2? uolv2;

  InfoMentor({required this.client, required this.cookieJar}) {
    authentication = Authentication(client: client);
    account = Account(client: client);
    notifications = Notifications(client: client);
    timetable = Timetable(client: client);
    resource = Resource(client: client);
    attendance = Attendance(client: client);
    communication = Communication(client: client);
    documentation = Documentation(client: client);
    assessment = Assessment(client: client);
    calendar = Calendar(client: client);
    classlist = Classlist(client: client);
    task = Task(client: client);
    timeregistration = Timeregistration(client: client);
    uolv2 = UolV2(client: client);
  }

  Map<Uri, List<SerializableCookie>> exportCookies() {
    Map<Uri, List<SerializableCookie>> res = {};
    var a = cookieJar.hostCookies;
    for (var host in a.keys) {
      for (var path in a[host]!.keys) {
        var uri = Uri(host: host, path: path);
        res[uri] = [];
        for (var cookie in a[host]![path]!.values) {
          res[Uri(host: host, path: path)]!.add(cookie);
        }
      }
    }

    return res;
  }
}

abstract class BaseAPI {
  Dio? client;

  BaseAPI({required this.client});
}

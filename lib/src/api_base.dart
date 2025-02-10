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
import 'package:lib_smilingschool/src/api/bindings/timetable.dart';

class InfoMentor {
  bool loggedIn = false;
  Dio? client;
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

  InfoMentor({required this.client}) {
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
  }
}

abstract class BaseAPI {
  Dio? client;

  BaseAPI({required this.client});
}

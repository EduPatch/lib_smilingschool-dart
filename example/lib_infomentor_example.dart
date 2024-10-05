import 'dart:io';
//import 'package:intl/intl.dart';
import 'package:lib_infomentor/lib_infomentor.dart';
//import 'package:lib_infomentor/src/api/models/notifications.models.dart';

void main() async {
  stdout.write("User >");
  var user = stdin.readLineSync() ?? "";
  stdout.write("Pass >");
  var pass = stdin.readLineSync() ?? "";
  // DEBUG
  //print('$user | $pass');
  InfoMentor client;
  client = await StockholmSTU().loginCredentials(user, pass);
  var isAuthenticated = await client.authentication?.isAuthenticated();
  print(isAuthenticated ?? false);

  /*print((await client.timetable?.getTimetableList(
          -120,
          DateTime.fromMillisecondsSinceEpoch(1727107913000),
          DateTime.fromMillisecondsSinceEpoch(1727539913000)))
      ?.first
      .toJson());*/

  /*print((await client.notifications
          ?.updateNotificationState([48572524], NotificationState.unread))
      ?.toJson());

  print((await client.notifications?.getNotifications())
      ?.notifications
      ?.first
      .toJson());
  print((await client.notifications?.appData())?.translations?.toJson());

  print((await client.account?.preferencesAppData())?.privacyUrl);*/
  print((await client.communication?.getDocumentsList(pageSize: 12))
      ?.items
      .length);
}

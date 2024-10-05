import 'dart:io';
import 'dart:developer';
//import 'package:intl/intl.dart';
import 'package:lib_infomentor/lib_infomentor.dart';
import 'package:lib_infomentor/src/infomentor_driver.dart';
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

  var driver = InfoMentorDriver(client: client);

  var timetableContext = driver.getTimetableContext();
  if (timetableContext != null) {
    var res = await timetableContext.getTimetable();
	inspect(res);
  }
  return;

  /*print((await client.notifications
          ?.updateNotificationState([48572524], NotificationState.unread))
      ?.toJson());

  print((await client.notifications?.getNotifications())
      ?.notifications
      ?.first
      .toJson());
  print((await client.notifications?.appData())?.translations?.toJson());

  print((await client.account?.preferencesAppData())?.privacyUrl);*/
  print((await client.documentation?.appData())?.tabs);
}

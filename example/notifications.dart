/* 
  In the following example we will get our notifications

  If you haven't checked out the authentication example yet I would recommend doing so, this example is based on that file!

  Author: SpamixOfficial
*/

import 'dart:io';
import 'package:lib_smilingschool/smilingschool.dart';

void main() async {
  stdout.write("User >");
  var user = stdin.readLineSync() ?? "";
  stdout.write("Pass >");
  var pass = stdin.readLineSync() ?? "";

  // Initialize our client
  InfoMentor client;
  client = await StockholmSTU().loginCredentials(user, pass);

  var isAuthenticated = await client.authentication?.isAuthenticated() ?? false;

  if (!isAuthenticated) {
    print("Authentication failed");
    return;
  }

  // Get all our notifications and exit with a pretty message if we don't

  // Notifications is nullable by default so we set it to an empty List if it happens to be null
  var notifications =
      (await client.notifications?.getNotifications())?.notifications ??
          List.empty();
  if (notifications.isEmpty) {
    print("No notifications!");
    return;
  }

  // Pretty print every notification
  for (var notification in notifications) {
    print("Notification ${notification.id}\n----------------\n");
    print("Title: ${notification.title}");
    print("Subtitle: ${notification.subTitle}");
    print("Sent at: ${notification.dateSent}");
    print("State: ${notification.state}");
    print("URL: ${notification.url}");
    print("----------------\n");
  }
}

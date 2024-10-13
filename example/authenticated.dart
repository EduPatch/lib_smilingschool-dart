/* 
  In the following example we will log in using an username and a password, then check if we're authenticated

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

  // Next we use an endpoint from the authentication category to check if we're authenticated.
  //
  // NOTE! We don't need to pass a token or credentials because we are using our already initialized client
  // Another NOTE! The client itself does not check if authentication went correctly. That is up to you to make sure
  var isAuthenticated = await client.authentication?.isAuthenticated();

  // Finally, are we authenticated?
  print("Authentication status: ${isAuthenticated ?? false}");
}

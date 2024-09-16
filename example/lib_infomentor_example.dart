import 'dart:io';
import 'package:lib_infomentor/lib_infomentor.dart';

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

  print((await client.account?.preferencesAppData())?.privacyUrl);
}

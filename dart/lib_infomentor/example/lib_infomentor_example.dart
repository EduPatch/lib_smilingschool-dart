import 'dart:io';
import 'package:lib_infomentor/lib_infomentor.dart';

void main() async {
  stdout.write("User >");
  var user = stdin.readLineSync() ?? "";
  stdout.write("Pass >");
  var pass = stdin.readLineSync() ?? "";
  // DEBUG
  //print('$user | $pass');
  InfoMentor imObj;
  imObj = await StockholmSTU().loginCredentials(user, pass);
  while (!imObj.loggedIn) {
    sleep(Duration(seconds: 1));
  }
  var client = imObj.client;
  client
      ?.post(
          "https://hub.infomentor.se/authentication/authentication/isauthenticated")
      .then((value) {
    print(
        "https://hub.infomentor.se/authentication/authentication/isauthenticated -> ${value.data}");
  });
}

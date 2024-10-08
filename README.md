## :warning: Disclaimer :warning:

We (edupatch) are ***not affiliated with or endorsed by Infomentor in any way***

# lib_infomentor

![Pub Version](https://img.shields.io/pub/v/lib_infomentor)


Infomentor API client in Dart built using Dio and json_serializable

Currently **web** is not supported because of CORS!

## Features

- Is **up to date** with the [Edupatch Infomentor API OpenAPI Spec](https://github.com/EduPatch/infomentor_api)
- Converts all response data to **native dart types** to make usage easy!
- You have **access to the underlying Dio client** in case you need to do special operations which the API is not capable of yet!
- Every response object is serialized - use your response with **ease**!
- Login systems are **modular** - switch em' all you want!

## Getting started

First add this package to your `pubspec.yaml`

Next import the package and initialize a client
```dart
import 'package:lib_infomentor/lib_infomentor.dart';

void main() async {
  var user = "USERNAME";
  var pass = "PASSWORD";
  InfoMentor client;
  // We Stockholm Student as the example system here
  client = await StockholmSTU().loginCredentials(user, pass);
  // Look, here we use the endpoint isAuthenticated in the authentication category of the API!
  var isAuthenticated = await client.authentication?.isAuthenticated();
  // Outputs true if you're authenticated, or false if null or false
  print(isAuthenticated ?? false);
}
```

That's it! You're now up and running.

If you are wondering about endpoints or such, please refer to the [Edupatch Infomentor API OpenAPI Spec](https://github.com/EduPatch/infomentor_api)

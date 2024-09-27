import 'package:intl/intl.dart';
import 'package:lib_infomentor/src/api_base.dart';

class Resource extends BaseAPI {
  Resource({required super.client});

  Future<dynamic> downloadResource(int id) async {
    // We dont give any parameters to api, Moduletype or connectionID at the moment because have no idea what they are meant for!
    // Just using defaults
    var rs = await super.client?.post(
        "https://hub.infomentor.se/Resources/Resource/Download/$id",
        queryParameters: {
          "api": "IM2",
          "ModuleType": "None",
          "ConnectionId": 0
        });
    return Future.value(rs?.data);
  }
}

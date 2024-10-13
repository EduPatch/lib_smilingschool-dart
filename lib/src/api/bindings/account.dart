import 'package:lib_smilingschool/src/api/models/account.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

class Account extends BaseAPI {
  Account({required super.client});

  Future<PreferencesAppData> preferencesAppData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/account/preferences/appData");
    return Future.value(PreferencesAppData.fromJson(rs?.data));
  }
}

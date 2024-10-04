import 'package:lib_infomentor/src/api/models/communication.models.dart';
import 'package:lib_infomentor/src/api_base.dart';

class Communication extends BaseAPI {
  Communication({required super.client});

  Future<CommunicationAppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/communication/communication/appData");
    return Future.value(CommunicationAppData.fromJson(rs?.data));
  }
}

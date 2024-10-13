import 'package:lib_smilingschool/src/api/models/documentation.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

class Documentation extends BaseAPI {
  Documentation({required super.client});

  Future<DocumentationAppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/documentation/documentation/appData");
    return Future.value(DocumentationAppData.fromJson(rs?.data));
  }
}

import 'package:lib_smilingschool/src/api/models/uolv2.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the UolV2 endpoints (also called Units of learning)
class UolV2 extends BaseAPI {
  UolV2({required super.client});

  /// Get the UolV2 AppData, used by the infomentor hub app for translations, default values, etc.
  Future<UolV2AppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/uolv2/uolv2/appData");
    return Future.value(UolV2AppData.fromJson(rs?.data));
  }

  /// Get all Uols.
  /// Pretty much the same as [appData] but there are no translation and url fields and you can specify the academic year + filters
  Future<UolV2Uols> getUols(
      int academicYearId, List<UolState> stateFilter) async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/UolV2/UolV2/GetUols", data: {
      "academicYearId": academicYearId,
      "stateFilter": stateFilter.map((x) => x.toString()).join(",")
    });
    return Future.value(UolV2Uols.fromJson(rs?.data));
  }
}

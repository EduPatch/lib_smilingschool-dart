import 'package:lib_smilingschool/src/api/models/classlist.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the classlist endpoints
class Classlist extends BaseAPI {
  Classlist({required super.client});

  /// AppData of the application, meant for use in Infomentor Hub but has use cases in user-apps as well!
  Future<ClasslistAppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/classlist/classlist/appData");
    return Future.value(ClasslistAppData.fromJson(rs?.data));
  }

  /// Get pupil by id and establishmentId
  ///
  /// A pupil rarely has an establishmentId though so the parameter can be left empty 99% of the time
  Future<ClasslistPupil> getPupil(String id, {String? establishmentId}) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/classlist/classlist/GetPupil",
        data: {"id": id, "establishmentId": establishmentId});
    return Future.value(ClasslistPupil.fromJson(rs?.data));
  }

  /// Get staff by id and establishmentId
  ///
  /// In contrast to a pupil, (almost) all staff has an establishmentId which means the parameter should rarely be left empty!
  Future<ClasslistStaff> getStaff(String id, {String? establishmentId}) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/classlist/classlist/GetStaff",
        data: {"id": id, "establishmentId": establishmentId});
    return Future.value(ClasslistStaff.fromJson(rs?.data));
  }
}

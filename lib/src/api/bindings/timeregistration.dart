import 'package:lib_smilingschool/src/api/models/timeregistration.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the Timeregistration endpoints
class Timeregistration extends BaseAPI {
  Timeregistration({required super.client});

  /// Get the timeregistration AppData, used by the infomentor hub app for translations, default values, etc.
  Future<TimeregistrationAppData> appData() async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/timeregistration/timeregistration/appData");
    return Future.value(TimeregistrationAppData.fromJson(rs?.data));
  }

  /// Get all timeregistrations
  Future<TimeregistrationTimeRegistration> getTimeRegistration(
      DateTime startDate) async {
    String formattedDate = startDate.toIso8601String();
    var rs = await super.client?.post(
        "https://hub.infomentor.se/timeregistration/timeregistration/GetTimeRegistrations",
        data: {
          "date": formattedDate,
          "showNextWeekIfNoMoreSchoolDays":
              true // wtf does this option do??? just set a default
        });
    return Future.value(TimeregistrationTimeRegistration.fromJson(rs?.data));
  }

  /// Save a time-registration
  ///
  /// Base your [TimeRegistrationUserDay] off of an existing [TimeRegistrationTimeRegistrationDay]
  ///
  /// If [TimeregistrationSaveResponse.success] isn't true, errors will be in [TimeregistrationSaveResponse.notifications]
  Future<TimeregistrationSaveResponse> saveTimeRegistration(
      List<TimeregistrationUserDay> timeRegistrationDays) async {
    // Leaving this here if this function ever stops working again, DOUBLE CHECK SERIALIZATION!!!
    //
    // - Alexander, 2 hours into debugging
    List<Map<String, dynamic>> serializedDays =
        timeRegistrationDays.map((x) => x.toJson()).toList();

    var rs = await super.client?.post(
        "https://hub.infomentor.se/TimeRegistration/TimeRegistration/SaveTimeRegistrations/",
        data: {
          "days": serializedDays,
          "series": null // wtf does this option do??? just set a default
        });
    return Future.value(TimeregistrationSaveResponse.fromJson(rs?.data));
  }
}

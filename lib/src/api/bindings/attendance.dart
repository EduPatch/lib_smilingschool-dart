import 'package:lib_smilingschool/src/api/models/attendence.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the Attendance endpoints
class Attendance extends BaseAPI {
  Attendance({required super.client});

  Future<AttendanceAppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/attendance/attendance/appData");
    return Future.value(AttendanceAppData.fromJson(rs?.data));
  }

  Future<AttendanceList> getAttendanceList() async {
    // We dont give any parameters to api, Moduletype or connectionID at the moment because I have no idea what they are meant for!
    // Just using defaults
    var rs = await super.client?.post(
        "https://hub.infomentor.se/attendance/attendance/GetAttendanceList");

    return Future.value(AttendanceList.fromJson(rs?.data));
  }

  /// Hello! This function was not possible to test due to some restrictions in our testing account.
  /// If you find bugs please report them to our github!
  ///
  /// - Edupatch Team
  Future<AttendanceSecondaryStatusResponse> setSecondaryStatus(
      int id, bool approved) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/attendance/attendance/SetSecondaryStatus",
        data: {"id": id, "isApproved": approved});
    return Future.value(AttendanceSecondaryStatusResponse.fromJson(rs?.data));
  }

  Future<AttendanceRegisterAttendanceResponse> registerAttendance(
      bool present, AttendanceDay day, AttendanceAbsenceType type) async {
    String dayAsString;
    String typeAsString;

    switch (day) {
      case AttendanceDay.today:
        dayAsString = 'today';
      case AttendanceDay.tomorrow:
        dayAsString = 'tomorrow';
    }
    switch (type) {
      case AttendanceAbsenceType.day:
        typeAsString = 'day';
      case AttendanceAbsenceType.session:
        typeAsString = 'session';
    }
    var rs = await super.client?.post(
        "https://hub.infomentor.se/attendance/attendance/registerAttendance",
        data: {
          "present": present,
          "day": dayAsString,
          "RegType": typeAsString,
          "canAddSicknessToTimeRegistration": false
        });
    return Future.value(
        AttendanceRegisterAttendanceResponse.fromJson(rs?.data));
  }

  Future<List<AttendanceLeaveRequest>> getLeaveRequestList() async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/attendance/attendance/GetLeaveRequestList");

    return (rs?.data as List<dynamic>)
        .map((val) => AttendanceLeaveRequest.fromJson(val))
        .toList();
  }
}

enum AttendanceDay { today, tomorrow }

enum AttendanceAbsenceType { day, session }

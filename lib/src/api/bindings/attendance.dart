import 'dart:convert';

import 'package:lib_infomentor/src/api/models/attendence.models.dart';
import 'package:lib_infomentor/src/api_base.dart';

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
    print(jsonEncode(rs?.data));
    return Future.value(AttendanceList.fromJson(rs?.data));
  }
}

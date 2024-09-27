import 'package:intl/intl.dart';
import 'package:lib_infomentor/src/api/models/timetable.models.dart';
import 'package:lib_infomentor/src/api_base.dart';

class Timetable extends BaseAPI {
  Timetable({required super.client});

  Future<TimetableAppData> appData() async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/timetable/timetable/appData");
    return Future.value(TimetableAppData.fromJson(rs?.data));
  }

  Future<List<TimetableObject>> getTimetableList(
      int offset, DateTime start, DateTime end) async {
    String formatString = (await appData()).shortDatePattern ?? "yyyy-MM-dd";
    DateFormat formatter = DateFormat(formatString);
    var rs = await super.client?.post(
        "https://hub.infomentor.se/timetable/timetable/gettimetablelist",
        data: {
          "UTCOffset": offset,
          "start": formatter.format(start),
          "end": formatter.format(end)
        });
    List<TimetableObject> objects = (rs?.data as List<dynamic>)
        .map((val) => TimetableObject.fromJson(val))
        .toList();

    return Future.value(objects);
  }
}

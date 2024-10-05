import 'package:dio/dio.dart';
import 'package:lib_driver/lib_driver.dart';
import 'package:lib_infomentor/src/api/models/timetable.models.dart';
import 'package:lib_infomentor/src/api_base.dart';

class InfoMentorTimetableContext extends TimetableContext {
  InfoMentor client;
  TimetableAppData? cachedTimetableAppData;

  Future<TimetableAppData> getTimetableAppData() async {
    if (cachedTimetableAppData != null) {
      // return the previously cached appdata
      return cachedTimetableAppData!;
    }

    var timetableAppData = await client.timetable?.appData();
    if (timetableAppData == null) {
      throw Exception("InfoMentor returned an invalid response");
    }

    cachedTimetableAppData = timetableAppData;
    return timetableAppData;
  }

  @override
  getTimetable() async {
	// TODO correct these arguments
    var lessonsRes = await client.timetable?.getTimetableList(
        -120,
        DateTime.fromMillisecondsSinceEpoch(1727107913000),
        DateTime.fromMillisecondsSinceEpoch(1727539913000));

    if (lessonsRes == null) {
      throw Exception("InfoMentor returned an invalid response");
    }

    var lessons = lessonsRes.map((lesson) {
      if (lesson.start == null || lesson.end == null) {
        throw Exception("InfoMentor returned an invalid response");
      }

      var timeMinutes = lesson.start!.hour * 60 + lesson.start!.minute;
      var diff = lesson.end!.difference(lesson.start!);

      // TODO correct dayIndex: 0
      return Lesson(
          timeMinutes: timeMinutes,
          lengthMinutes: diff.inMinutes,
          dayIndex: 0,
          subjectName: lesson.title!);
    }).toList();

    var timetableAppData = await getTimetableAppData();

    if (timetableAppData.startingHour == null ||
        timetableAppData.endingHour == null) {
      throw Exception("InfoMentor returned an invalid response");
    }

    var beginMinutes = timetableAppData.startingHour!.hour * 60 +
        timetableAppData.endingHour!.minute;
    var endMinutes = timetableAppData.endingHour!.hour * 60 +
        timetableAppData.endingHour!.minute;
    var lengthMinutes = endMinutes - beginMinutes;

    return Timetable(
        beginMinutes: beginMinutes,
        lengthMinutes: lengthMinutes,
        lessons: lessons);
  }

  InfoMentorTimetableContext({required this.client});
}

class InfoMentorDriver extends DriverBase {
  @override
  get driverMetadata => DriverMetadata(
      driverName: "InfoMentor", supportedFeatures: [ContextType.timetable]);

  @override
  getTimetableContext() {
    return InfoMentorTimetableContext(client: client);
  }

  InfoMentor client;

  InfoMentorDriver({required this.client});
}

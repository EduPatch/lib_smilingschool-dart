import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timetable.models.g.dart';

DateTime _imExtendedHms(String? timeString) {
  List<String> parts = (timeString ?? "00:00:00").split('.').reversed.toList();
  DateTime time1 = DateFormat.Hms().parse(parts.first);
  if (parts.length == 2) {
    // Convert days to hours. Weird InfoMentor format!
    time1 = time1.add(Duration(days: int.parse(parts[1])));
  }
  return time1;
}

String? _imExtendedHmsToJson(DateTime? time) {
  if (time == null) {
    return null;
  }
  // timeString, "day." is added if days are over 1 (default)
  String? timeString =
      "${time.day > 1 ? "${time.day - 1}." : ""}${DateFormat.Hms().format(time)}";
  return timeString;
}

@JsonSerializable()
class TimetableAppData {
  final List<TimetableObject>? items;
  //DateTime? ;
  int? numberOfDays;
  String? shortDatePattern, maxDate, minDate;
  @JsonKey(
    toJson: _hourToJson,
    fromJson: _hourFromJson,
  )
  DateTime? endingHour, startingHour;
  bool? appendRoomNameToTitle;
  TimetableAppDataTranslations? translations;

  // Custom implementations
  static String? _hourToJson(DateTime? val) => _imExtendedHmsToJson(val);
  static DateTime? _hourFromJson(String? val) =>
      val != null ? _imExtendedHms(val) : null;

  TimetableAppData(this.items, this.minDate, this.endingHour, this.maxDate,
      this.startingHour, this.numberOfDays, this.translations);
  factory TimetableAppData.fromJson(Map<String, dynamic> json) =>
      _$TimetableAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$TimetableAppDataToJson(this);
}

@JsonSerializable()
class TimetableObject {
  DateTime? start, end;
  String? title, establishmentName, details;
  @JsonKey(
    toJson: _timeToJson,
    fromJson: _timeFromJson,
  )
  DateTime? startTime, endTime;
  bool? allDay;
  final TimetableObjectNotes? notes;

  // Custom implementations
  static DateTime? _timeFromJson(String? val) =>
      val != null ? DateFormat.Hm().parse(val) : null;
  static String? _timeToJson(DateTime? val) =>
      val != null ? DateFormat.Hm().format(val) : null;

  TimetableObject(
      this.allDay,
      this.details,
      this.end,
      this.endTime,
      this.establishmentName,
      this.start,
      this.startTime,
      this.title,
      this.notes);
  factory TimetableObject.fromJson(Map<String, dynamic> json) =>
      _$TimetableObjectFromJson(json);
  Map<String, dynamic> toJson() => _$TimetableObjectToJson(this);
}

@JsonSerializable()
class TimetableObjectNotes {
  String? roomInfo, timetableNotes, tutors;

  TimetableObjectNotes(this.roomInfo, this.timetableNotes, this.tutors);
  factory TimetableObjectNotes.fromJson(Map<String, dynamic> json) =>
      _$TimetableObjectNotesFromJson(json);
  Map<String, dynamic> toJson() => _$TimetableObjectNotesToJson(this);
}

@JsonSerializable()
class TimetableAppDataTranslations {
  String? informationFrom,
      notes,
      room,
      additionalInformation,
      time,
      lessonTitle,
      lessonInformation,
      jumpToDate,
      tutors,
      printHeader,
      gotoToday;
  TimetableAppDataTranslations(
      this.informationFrom,
      this.notes,
      this.room,
      this.additionalInformation,
      this.time,
      this.lessonTitle,
      this.lessonInformation,
      this.jumpToDate,
      this.tutors,
      this.printHeader,
      this.gotoToday);
  factory TimetableAppDataTranslations.fromJson(Map<String, dynamic> json) =>
      _$TimetableAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$TimetableAppDataTranslationsToJson(this);
}

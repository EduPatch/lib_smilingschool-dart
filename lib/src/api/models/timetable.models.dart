import 'package:json_annotation/json_annotation.dart';

part 'timetable.models.g.dart';

@JsonSerializable()
class TimetableAppData {
  final List<TimetableObject>? items;
  //DateTime? ;
  int? numberOfDays;
  String? shortDatePattern, maxDate, minDate, endingHour, startingHour;
  bool? appendRoomNameToTitle;
  TimetableAppDataTranslations? translations;

  TimetableAppData(this.items, this.minDate, this.endingHour, this.maxDate,
      this.startingHour, this.numberOfDays, this.translations);
  factory TimetableAppData.fromJson(Map<String, dynamic> json) =>
      _$TimetableAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$TimetableAppDataToJson(this);
}

@JsonSerializable()
class TimetableObject {
  DateTime? start, end;
  String? title, establishmentName, details, startTime, endTime;
  bool? allDay;
  final TimetableObjectNotes? notes;

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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimetableAppData _$TimetableAppDataFromJson(Map<String, dynamic> json) =>
    TimetableAppData(
      (json['items'] as List<dynamic>?)
          ?.map((e) => TimetableObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['minDate'] as String?,
      TimetableAppData._hourFromJson(json['endingHour'] as String?),
      json['maxDate'] as String?,
      TimetableAppData._hourFromJson(json['startingHour'] as String?),
      (json['numberOfDays'] as num?)?.toInt(),
      json['translations'] == null
          ? null
          : TimetableAppDataTranslations.fromJson(
              json['translations'] as Map<String, dynamic>),
    )
      ..shortDatePattern = json['shortDatePattern'] as String?
      ..appendRoomNameToTitle = json['appendRoomNameToTitle'] as bool?;

Map<String, dynamic> _$TimetableAppDataToJson(TimetableAppData instance) =>
    <String, dynamic>{
      'items': instance.items,
      'numberOfDays': instance.numberOfDays,
      'shortDatePattern': instance.shortDatePattern,
      'maxDate': instance.maxDate,
      'minDate': instance.minDate,
      'endingHour': TimetableAppData._hourToJson(instance.endingHour),
      'startingHour': TimetableAppData._hourToJson(instance.startingHour),
      'appendRoomNameToTitle': instance.appendRoomNameToTitle,
      'translations': instance.translations,
    };

TimetableObject _$TimetableObjectFromJson(Map<String, dynamic> json) =>
    TimetableObject(
      json['allDay'] as bool?,
      json['details'] as String?,
      json['end'] == null ? null : DateTime.parse(json['end'] as String),
      TimetableObject._timeFromJson(json['endTime'] as String?),
      json['establishmentName'] as String?,
      json['start'] == null ? null : DateTime.parse(json['start'] as String),
      TimetableObject._timeFromJson(json['startTime'] as String?),
      json['title'] as String?,
      json['notes'] == null
          ? null
          : TimetableObjectNotes.fromJson(
              json['notes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TimetableObjectToJson(TimetableObject instance) =>
    <String, dynamic>{
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'title': instance.title,
      'establishmentName': instance.establishmentName,
      'details': instance.details,
      'startTime': TimetableObject._timeToJson(instance.startTime),
      'endTime': TimetableObject._timeToJson(instance.endTime),
      'allDay': instance.allDay,
      'notes': instance.notes,
    };

TimetableObjectNotes _$TimetableObjectNotesFromJson(
        Map<String, dynamic> json) =>
    TimetableObjectNotes(
      json['roomInfo'] as String?,
      json['timetableNotes'] as String?,
      json['tutors'] as String?,
    );

Map<String, dynamic> _$TimetableObjectNotesToJson(
        TimetableObjectNotes instance) =>
    <String, dynamic>{
      'roomInfo': instance.roomInfo,
      'timetableNotes': instance.timetableNotes,
      'tutors': instance.tutors,
    };

TimetableAppDataTranslations _$TimetableAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    TimetableAppDataTranslations(
      json['informationFrom'] as String?,
      json['notes'] as String?,
      json['room'] as String?,
      json['additionalInformation'] as String?,
      json['time'] as String?,
      json['lessonTitle'] as String?,
      json['lessonInformation'] as String?,
      json['jumpToDate'] as String?,
      json['tutors'] as String?,
      json['printHeader'] as String?,
      json['gotoToday'] as String?,
    );

Map<String, dynamic> _$TimetableAppDataTranslationsToJson(
        TimetableAppDataTranslations instance) =>
    <String, dynamic>{
      'informationFrom': instance.informationFrom,
      'notes': instance.notes,
      'room': instance.room,
      'additionalInformation': instance.additionalInformation,
      'time': instance.time,
      'lessonTitle': instance.lessonTitle,
      'lessonInformation': instance.lessonInformation,
      'jumpToDate': instance.jumpToDate,
      'tutors': instance.tutors,
      'printHeader': instance.printHeader,
      'gotoToday': instance.gotoToday,
    };

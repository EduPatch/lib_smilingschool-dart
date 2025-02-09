// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalendarAppData _$CalendarAppDataFromJson(Map<String, dynamic> json) =>
    CalendarAppData(
      CalendarAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      (json['calendarEntryTypes'] as List<dynamic>)
          .map((e) =>
              CalendarAppDataEntryType.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['hasCustomSchoolLogo'] as bool,
      CalendarAppData._dateFromJson(json['todayDate'] as String),
      CalendarAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CalendarAppDataToJson(CalendarAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'urls': instance.urls,
      'calendarEntryTypes': instance.calendarEntryTypes,
      'hasCustomSchoolLogo': instance.hasCustomSchoolLogo,
      'todayDate': CalendarAppData._dateToJson(instance.todayDate),
    };

CalendarAppDataTranslations _$CalendarAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    CalendarAppDataTranslations(
      json['wholeWeek'] as String,
      json['week'] as String,
      json['events'] as String,
      json['mondayAbbrv'] as String,
      json['tuesdayAbbrv'] as String,
      json['wednesdayAbbrv'] as String,
      json['thursdayAbbrv'] as String,
      json['fridayAbbrv'] as String,
      json['saturdayAbbrv'] as String,
      json['sundayAbbrv'] as String,
      json['noResultsDay'] as String,
      json['noResultsWeek'] as String,
      json['clickToOpenSurvey'] as String,
      json['clickToOpenTask'] as String,
      json['file'] as String,
      json['downloadAttachment'] as String,
      json['jumpToWeek'] as String,
      json['nextWeek'] as String,
      json['lastWeek'] as String,
      json['exportCalendar'] as String,
      json['exportSubscriptionText'] as String,
      json['subscribe'] as String,
      json['exportCopyUrlText'] as String,
      json['copyUrlToClipboard'] as String,
      json['print'] as String,
      json['printDate'] as String,
    );

Map<String, dynamic> _$CalendarAppDataTranslationsToJson(
        CalendarAppDataTranslations instance) =>
    <String, dynamic>{
      'wholeWeek': instance.wholeWeek,
      'week': instance.week,
      'events': instance.events,
      'mondayAbbrv': instance.mondayAbbrv,
      'tuesdayAbbrv': instance.tuesdayAbbrv,
      'wednesdayAbbrv': instance.wednesdayAbbrv,
      'thursdayAbbrv': instance.thursdayAbbrv,
      'fridayAbbrv': instance.fridayAbbrv,
      'saturdayAbbrv': instance.saturdayAbbrv,
      'sundayAbbrv': instance.sundayAbbrv,
      'noResultsDay': instance.noResultsDay,
      'noResultsWeek': instance.noResultsWeek,
      'clickToOpenSurvey': instance.clickToOpenSurvey,
      'clickToOpenTask': instance.clickToOpenTask,
      'file': instance.file,
      'downloadAttachment': instance.downloadAttachment,
      'jumpToWeek': instance.jumpToWeek,
      'nextWeek': instance.nextWeek,
      'lastWeek': instance.lastWeek,
      'exportCalendar': instance.exportCalendar,
      'exportSubscriptionText': instance.exportSubscriptionText,
      'subscribe': instance.subscribe,
      'exportCopyUrlText': instance.exportCopyUrlText,
      'copyUrlToClipboard': instance.copyUrlToClipboard,
      'print': instance.print,
      'printDate': instance.printDate,
    };

CalendarAppDataEntryType _$CalendarAppDataEntryTypeFromJson(
        Map<String, dynamic> json) =>
    CalendarAppDataEntryType(
      json['className'] as String,
      json['colour'] as String,
      (json['id'] as num).toInt(),
      json['isCustomType'] as bool,
      json['name'] as String,
    );

Map<String, dynamic> _$CalendarAppDataEntryTypeToJson(
        CalendarAppDataEntryType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'colour': instance.colour,
      'className': instance.className,
      'isCustomType': instance.isCustomType,
    };

CalendarAppDataUrls _$CalendarAppDataUrlsFromJson(Map<String, dynamic> json) =>
    CalendarAppDataUrls(
      Uri.parse(json['getEntries'] as String),
      Uri.parse(json['getAttachments'] as String),
      Uri.parse(json['exportCalendar'] as String),
      Uri.parse(json['getEstablishmentLogo'] as String),
      Uri.parse(json['getIcalSubscriptionUri'] as String),
      Uri.parse(json['getO365EventDescription'] as String),
    );

Map<String, dynamic> _$CalendarAppDataUrlsToJson(
        CalendarAppDataUrls instance) =>
    <String, dynamic>{
      'getEntries': instance.getEntries.toString(),
      'getAttachments': instance.getAttachments.toString(),
      'exportCalendar': instance.exportCalendar.toString(),
      'getEstablishmentLogo': instance.getEstablishmentLogo.toString(),
      'getIcalSubscriptionUri': instance.getIcalSubscriptionUri.toString(),
      'getO365EventDescription': instance.getO365EventDescription.toString(),
    };

CalendarEntry _$CalendarEntryFromJson(Map<String, dynamic> json) =>
    CalendarEntry(
      (json['calendarEntryTypeId'] as num).toInt(),
      json['description'] as String,
      (json['googleEventId'] as num?)?.toInt(),
      json['hasAttachments'] as bool,
      (json['id'] as num).toInt(),
      (json['o365EventId'] as num?)?.toInt(),
      json['text'] as String,
      json['title'] as String,
      json['url'] == null ? null : Uri.parse(json['url'] as String),
      CalendarEntry._dateFromJson(json['endDate'] as String),
      CalendarEntry._fullDateFromJson(json['endDateFull'] as String),
      CalendarEntry._timeFromJson(json['endTime'] as String?),
      json['formattedEndDate'] as String,
      json['formattedStartDate'] as String,
      CalendarEntry._dateFromJson(json['startDate'] as String),
      CalendarEntry._fullDateFromJson(json['startDateFull'] as String),
      CalendarEntry._timeFromJson(json['startTime'] as String?),
      (json['subjects'] as List<dynamic>)
          .map((e) => CalendarEntrySubject.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['courses'] as List<dynamic>,
    );

Map<String, dynamic> _$CalendarEntryToJson(CalendarEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'calendarEntryTypeId': instance.calendarEntryTypeId,
      'o365EventId': instance.o365EventId,
      'googleEventId': instance.googleEventId,
      'title': instance.title,
      'text': instance.text,
      'description': instance.description,
      'formattedStartDate': instance.formattedStartDate,
      'formattedEndDate': instance.formattedEndDate,
      'url': instance.url?.toString(),
      'hasAttachments': instance.hasAttachments,
      'startDateFull': CalendarEntry._fullDateToJson(instance.startDateFull),
      'endDateFull': CalendarEntry._fullDateToJson(instance.endDateFull),
      'startDate': CalendarEntry._dateToJson(instance.startDate),
      'endDate': CalendarEntry._dateToJson(instance.endDate),
      'startTime': CalendarEntry._timeToJson(instance.startTime),
      'endTime': CalendarEntry._timeToJson(instance.endTime),
      'subjects': instance.subjects,
      'courses': instance.courses,
    };

CalendarEntrySubject _$CalendarEntrySubjectFromJson(
        Map<String, dynamic> json) =>
    CalendarEntrySubject(
      (json['id'] as num).toInt(),
      json['title'] as String,
    );

Map<String, dynamic> _$CalendarEntrySubjectToJson(
        CalendarEntrySubject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

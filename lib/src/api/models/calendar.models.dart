import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calendar.models.g.dart';

@JsonSerializable()
class CalendarAppData {
  CalendarAppDataTranslations translations;
  CalendarAppDataUrls urls;
  List<CalendarAppDataEntryType> calendarEntryTypes;
  bool hasCustomSchoolLogo;
  @JsonKey(toJson: _dateToJson, fromJson: _dateFromJson)
  DateTime todayDate;

  CalendarAppData(this.translations, this.calendarEntryTypes,
      this.hasCustomSchoolLogo, this.todayDate, this.urls);

  static DateTime _dateFromJson(String val) =>
      DateFormat('yyyy/MM/dd').parse(val);
  static String _dateToJson(DateTime val) =>
      DateFormat('yyyy/MM/dd').format(val);

  factory CalendarAppData.fromJson(Map<String, dynamic> json) =>
      _$CalendarAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarAppDataToJson(this);
}

@JsonSerializable()
class CalendarAppDataTranslations {
  String wholeWeek,
      week,
      events,
      mondayAbbrv,
      tuesdayAbbrv,
      wednesdayAbbrv,
      thursdayAbbrv,
      fridayAbbrv,
      saturdayAbbrv,
      sundayAbbrv,
      noResultsDay,
      noResultsWeek,
      clickToOpenSurvey,
      clickToOpenTask,
      file,
      downloadAttachment,
      jumpToWeek,
      nextWeek,
      lastWeek,
      exportCalendar,
      exportSubscriptionText,
      subscribe,
      exportCopyUrlText,
      copyUrlToClipboard,
      print,
      printDate;
  CalendarAppDataTranslations(
      this.wholeWeek,
      this.week,
      this.events,
      this.mondayAbbrv,
      this.tuesdayAbbrv,
      this.wednesdayAbbrv,
      this.thursdayAbbrv,
      this.fridayAbbrv,
      this.saturdayAbbrv,
      this.sundayAbbrv,
      this.noResultsDay,
      this.noResultsWeek,
      this.clickToOpenSurvey,
      this.clickToOpenTask,
      this.file,
      this.downloadAttachment,
      this.jumpToWeek,
      this.nextWeek,
      this.lastWeek,
      this.exportCalendar,
      this.exportSubscriptionText,
      this.subscribe,
      this.exportCopyUrlText,
      this.copyUrlToClipboard,
      this.print,
      this.printDate);
  factory CalendarAppDataTranslations.fromJson(Map<String, dynamic> json) =>
      _$CalendarAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarAppDataTranslationsToJson(this);
}

@JsonSerializable()
class CalendarAppDataEntryType {
  int id;
  String name, colour, className;
  bool isCustomType;

  CalendarAppDataEntryType(
      this.className, this.colour, this.id, this.isCustomType, this.name);

  factory CalendarAppDataEntryType.fromJson(Map<String, dynamic> json) =>
      _$CalendarAppDataEntryTypeFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarAppDataEntryTypeToJson(this);
}

@JsonSerializable()
class CalendarAppDataUrls {
  Uri getEntries,
      getAttachments,
      exportCalendar,
      getEstablishmentLogo,
      getIcalSubscriptionUri,
      getO365EventDescription;

  CalendarAppDataUrls(
      this.getEntries,
      this.getAttachments,
      this.exportCalendar,
      this.getEstablishmentLogo,
      this.getIcalSubscriptionUri,
      this.getO365EventDescription);

  factory CalendarAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$CalendarAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarAppDataUrlsToJson(this);
}

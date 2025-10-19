import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timeregistration.models.g.dart';

enum Culture {
  @JsonValue("en-GB")
  en_GB,
  @JsonValue("sv-SE")
  sv_SE,
  @JsonValue("is")
  is_IS;

  @override
  String toString() {
    switch (this) {
      case Culture.en_GB:
        return "en-GB";
      case Culture.sv_SE:
        return "sv-SE";
      case Culture.is_IS:
        return "is";
    }
  }
}

@JsonSerializable()
class TimeregistrationAppData {
  final TimeregistrationAppDataTranslations translations;

  @JsonKey(
    toJson: _regDateToJson,
    fromJson: _regDateFromJson,
  )
  List<DateTime?> timeRegistrationDates;

  final Culture currentCulture;

  /// Timezoneoffset in hours!
  @JsonKey(
    toJson: _tzOffsetToJson,
    fromJson: _tzOffsetFromJson,
  )
  final int currentTimeZoneOffset;
  TimeregistrationAppData(this.translations, this.timeRegistrationDates,
      this.currentCulture, this.currentTimeZoneOffset);

  factory TimeregistrationAppData.fromJson(Map<String, dynamic> json) =>
      _$TimeregistrationAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$TimeregistrationAppDataToJson(this);

  // helper functions
  static List<DateTime?> _regDateFromJson(List<String> val) => val
      .map((x) => x != "" ? DateFormat('yyyy-MM-dd').parse(x) : null)
      .toList();
  static List<String> _regDateToJson(List<DateTime?> val) =>
      val.map((x) => x != null ? x.toString() : "").toList();

  static int _tzOffsetFromJson(String val) {
    if (val == "") {
      return 0;
    }
    final x = DateFormat('HH:mm:ss').parse(val);
    return x
        .hour; // this will realistically never be seconds or minutes unless something changes DRASTICALLY in timezones lol
  }

  static String _tzOffsetToJson(int val) => "${val}:00:00";
}

@JsonSerializable()
class TimeregistrationAppDataTranslations {
  final String save,
      onLeave,
      repeatThisWeek,
      pickupTimeExtends,
      schoolClosed,
      locked,
      copyToSiblings,
      cannotEditPastRegistrations,
      cannotScheduleOutsideOpeningHours,
      startBeforeEnd,
      comment,
      checkedIn,
      checkedOut,
      notCheckedIn,
      notCheckedOut,
      cannotEditPastComments,
      lockedBySchool,
      scheduleRepeatEvery,
      repeatWeekPositiveNumber,
      apply,
      dataSaved,
      futureRepeat,
      copySchedule,
      copySiblingsHelpText,
      closeMessage,
      headerTimeReg,
      week,
      jumpToWeek,
      nextWeek,
      lastWeek,
      pastWeekWarning,
      pastWeekCommentsWarning,
      weeks,
      today,
      yesterday,
      registrationDetails,
      notCheckedInYet,
      notCheckedOutYet,
      thisWeek,
      comments,
      timeRegRowLocked,
      commonCancel,
      repeatWeekX,
      repeatEvery,
      repeatUntilPastError,
      untilAfter,
      atTime,
      endTimeNextDay,
      extendPickupTime,
      editYourComment,
      commentsAndMore,
      timeRegistrationSaved,
      timeRegistrationDataSavedDescription,
      timesLockedBySchool;
  TimeregistrationAppDataTranslations(
      this.save,
      this.onLeave,
      this.repeatThisWeek,
      this.pickupTimeExtends,
      this.schoolClosed,
      this.locked,
      this.copyToSiblings,
      this.cannotEditPastRegistrations,
      this.cannotScheduleOutsideOpeningHours,
      this.startBeforeEnd,
      this.comment,
      this.checkedIn,
      this.checkedOut,
      this.notCheckedIn,
      this.notCheckedOut,
      this.cannotEditPastComments,
      this.lockedBySchool,
      this.scheduleRepeatEvery,
      this.repeatWeekPositiveNumber,
      this.apply,
      this.dataSaved,
      this.futureRepeat,
      this.copySchedule,
      this.copySiblingsHelpText,
      this.closeMessage,
      this.headerTimeReg,
      this.week,
      this.jumpToWeek,
      this.nextWeek,
      this.lastWeek,
      this.pastWeekWarning,
      this.pastWeekCommentsWarning,
      this.weeks,
      this.today,
      this.yesterday,
      this.registrationDetails,
      this.notCheckedInYet,
      this.notCheckedOutYet,
      this.thisWeek,
      this.comments,
      this.timeRegRowLocked,
      this.commonCancel,
      this.repeatWeekX,
      this.repeatEvery,
      this.repeatUntilPastError,
      this.untilAfter,
      this.atTime,
      this.endTimeNextDay,
      this.extendPickupTime,
      this.editYourComment,
      this.commentsAndMore,
      this.timeRegistrationSaved,
      this.timeRegistrationDataSavedDescription,
      this.timesLockedBySchool);
  factory TimeregistrationAppDataTranslations.fromJson(
          Map<String, dynamic> json) =>
      _$TimeregistrationAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TimeregistrationAppDataTranslationsToJson(this);
}

@JsonSerializable()
class TimeregistrationTimeRegistration {
  @JsonKey(toJson: _dateNoMicroNullToJson)
  final DateTime? startDate, endDate;
  List<TimeregistrationTimeRegistrationDay> days;

  TimeregistrationTimeRegistration(this.days, this.endDate, this.startDate);

  factory TimeregistrationTimeRegistration.fromJson(
          Map<String, dynamic> json) =>
      _$TimeregistrationTimeRegistrationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TimeregistrationTimeRegistrationToJson(this);

  static String? _dateNoMicroNullToJson(DateTime? val) =>
      val?.toIso8601String().replaceAll(RegExp(r'\.000'), "");
}

@JsonSerializable()
class TimeregistrationTimeRegistrationDay {
  @JsonKey(toJson: _dateNoMicroToJson)
  DateTime date, schoolOpeningTime, schoolClosingTime;
  @JsonKey(toJson: _dateNoMicroNullToJson)
  DateTime? startDateTime, endDateTime;
  String schoolClosedReason;
  bool onLeave,
      isLocked,
      isSchoolClosed,
      canEdit,
      hasUnreadComments,
      hasComments,
      canEditComment;
  int timeRegistrationId;
  TimeregistrationTimeRegistrationDay(
      this.canEdit,
      this.canEditComment,
      this.date,
      this.endDateTime,
      this.hasComments,
      this.hasUnreadComments,
      this.isLocked,
      this.isSchoolClosed,
      this.onLeave,
      this.schoolClosedReason,
      this.schoolClosingTime,
      this.schoolOpeningTime,
      this.startDateTime,
      this.timeRegistrationId);

  factory TimeregistrationTimeRegistrationDay.fromJson(
          Map<String, dynamic> json) =>
      _$TimeregistrationTimeRegistrationDayFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TimeregistrationTimeRegistrationDayToJson(this);

  static String _dateNoMicroToJson(DateTime val) =>
      val.toIso8601String().replaceAll(RegExp(r'\.000'), "");

  static String? _dateNoMicroNullToJson(DateTime? val) =>
      val?.toIso8601String().replaceAll(RegExp(r'\.000'), "");
}

/// When a fail-response is sent back, the error will be in Notifications
@JsonSerializable()
class TimeregistrationSaveResponse {
  bool success;
  List<TimeregistrationSaveResponseNotification> notifications;

  TimeregistrationSaveResponse(this.notifications, this.success);

  factory TimeregistrationSaveResponse.fromJson(Map<String, dynamic> json) =>
      _$TimeregistrationSaveResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TimeregistrationSaveResponseToJson(this);
}

@JsonSerializable()
class TimeregistrationSaveResponseNotification {
  String? message, title;

  /// In practice I've always found this to be non-null, but considering that random things suddenly turn null in this API I don't wanna risk it :)
  ///
  /// This should be an enum but I can't find the enum-items in the website scripts, so for now it will be a script
  String? type;

  TimeregistrationSaveResponseNotification(this.message, this.title, this.type);

  factory TimeregistrationSaveResponseNotification.fromJson(
          Map<String, dynamic> json) =>
      _$TimeregistrationSaveResponseNotificationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TimeregistrationSaveResponseNotificationToJson(this);
}

enum RegistrationType {
  @JsonValue("TimeReg")
  timeReg,
  @JsonValue("OnLeave")
  onLeave;

  @override
  String toString() {
    switch (this) {
      case RegistrationType.onLeave:
        return "OnLeave";
      case RegistrationType.timeReg:
        return "TimeReg";
    }
  }
}

/// If updating an existing [TimeregistrationTimeRegistrationDay] please use the conversion method:
/// [TimeregistrationUserDay.fromTimeregistrationTimeRegistrationDay]
@JsonSerializable()
class TimeregistrationUserDay {
  @JsonKey(toJson: _dateNoMicroToJson)
  DateTime date, schoolOpeningTime, schoolClosingTime;
  String schoolClosedReason;

  /// Set onLeave to true when registrationType is RegistrationType.onLeave
  bool onLeave,
      isLocked,
      isSchoolClosed,
      canEdit,
      hasUnreadComments,
      hasComments,

      /// should always be left true when updating ANYTHING
      hasChanged,
      canEditComment,
      isCommentUpdated;
  int timeRegistrationId;

  /// Has no apparent purpose
  String commentText;

  ///Has no apparent purpose either
  int commentId;

  /// Set to RegistrationType.onLeave when field onLeave is enabled
  RegistrationType registrationType;

  TimeregistrationUserDay(
      this.timeRegistrationId,
      this.canEdit,
      this.canEditComment,
      this.date,
      this.hasComments,
      this.hasUnreadComments,
      this.isLocked,
      this.isSchoolClosed,
      this.onLeave,
      this.schoolClosedReason,
      this.schoolClosingTime,
      this.schoolOpeningTime,
      this.commentId,
      this.commentText,
      this.hasChanged,
      this.registrationType,
      this.isCommentUpdated);

  factory TimeregistrationUserDay.fromJson(Map<String, dynamic> json) =>
      _$TimeregistrationUserDayFromJson(json);

  Map<String, dynamic> toJson() => _$TimeregistrationUserDayToJson(this);

  /// Convert a [TimeregistrationTimeRegistrationDay] (short timeRegDay) to a [TimeregistrationUserDay]
  /// Optional fields should ONLY be set if you are changing anything.
  ///
  /// regType should be modified to [RegistrationType.onLeave] if onLeave is true
  ///
  /// When changing anything set hasChanged to true!
  static TimeregistrationUserDay fromTimeregistrationTimeRegistrationDay(
      TimeregistrationTimeRegistrationDay timeRegDay,
      {RegistrationType regType = RegistrationType.timeReg,
      bool? onLeave,
      bool? hasUnreadComments,
      bool? hasComments,
      bool hasChanged = false}) {
    return TimeregistrationUserDay(
        timeRegDay.timeRegistrationId,
        timeRegDay.canEdit,
        timeRegDay.canEditComment,
        timeRegDay.date,
        hasComments ?? timeRegDay.hasComments,
        hasUnreadComments ?? timeRegDay.hasUnreadComments,
        timeRegDay.isLocked,
        timeRegDay.isSchoolClosed,
        onLeave ?? timeRegDay.onLeave,
        timeRegDay.schoolClosedReason,
        timeRegDay.schoolClosingTime,
        timeRegDay.schoolOpeningTime,
        0, // default for commentId, seems to have no real purpose since comment is a separate API endpoint
        "", // also default for commentText
        hasChanged,
        regType,
        false // default
        );
  }

  static String _dateNoMicroToJson(DateTime val) =>
      val.toIso8601String().replaceAll(RegExp(r'\.000'), "");
}

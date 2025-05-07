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
  final DateTime? startDate, endDate;
  List<TimeregistrationTimeRegistrationDay> days;

  TimeregistrationTimeRegistration(this.days, this.endDate, this.startDate);

  factory TimeregistrationTimeRegistration.fromJson(
          Map<String, dynamic> json) =>
      _$TimeregistrationTimeRegistrationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TimeregistrationTimeRegistrationToJson(this);
}

@JsonSerializable()
class TimeregistrationTimeRegistrationDay {
  DateTime date, schoolOpeningTime, schoolClosingTime;
  //DateTime? startDateTime, endDateTime;
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
      //this.endDateTime,
      this.hasComments,
      this.hasUnreadComments,
      this.isLocked,
      this.isSchoolClosed,
      this.onLeave,
      this.schoolClosedReason,
      this.schoolClosingTime,
      this.schoolOpeningTime,
      //this.startDateTime,
      this.timeRegistrationId);

  factory TimeregistrationTimeRegistrationDay.fromJson(
          Map<String, dynamic> json) =>
      _$TimeregistrationTimeRegistrationDayFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TimeregistrationTimeRegistrationDayToJson(this);
}

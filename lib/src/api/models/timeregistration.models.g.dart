// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeregistration.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeregistrationAppData _$TimeregistrationAppDataFromJson(
        Map<String, dynamic> json) =>
    TimeregistrationAppData(
      TimeregistrationAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      TimeregistrationAppData._regDateFromJson(
          json['timeRegistrationDates'] as List<String>),
      $enumDecode(_$CultureEnumMap, json['currentCulture']),
      TimeregistrationAppData._tzOffsetFromJson(
          json['currentTimeZoneOffset'] as String),
    );

Map<String, dynamic> _$TimeregistrationAppDataToJson(
        TimeregistrationAppData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'timeRegistrationDates': TimeregistrationAppData._regDateToJson(
          instance.timeRegistrationDates),
      'currentCulture': _$CultureEnumMap[instance.currentCulture]!,
      'currentTimeZoneOffset': TimeregistrationAppData._tzOffsetToJson(
          instance.currentTimeZoneOffset),
    };

const _$CultureEnumMap = {
  Culture.en_GB: 'en-GB',
  Culture.sv_SE: 'sv-SE',
  Culture.is_IS: 'is',
};

TimeregistrationAppDataTranslations
    _$TimeregistrationAppDataTranslationsFromJson(Map<String, dynamic> json) =>
        TimeregistrationAppDataTranslations(
          json['save'] as String,
          json['onLeave'] as String,
          json['repeatThisWeek'] as String,
          json['pickupTimeExtends'] as String,
          json['schoolClosed'] as String,
          json['locked'] as String,
          json['copyToSiblings'] as String,
          json['cannotEditPastRegistrations'] as String,
          json['cannotScheduleOutsideOpeningHours'] as String,
          json['startBeforeEnd'] as String,
          json['comment'] as String,
          json['checkedIn'] as String,
          json['checkedOut'] as String,
          json['notCheckedIn'] as String,
          json['notCheckedOut'] as String,
          json['cannotEditPastComments'] as String,
          json['lockedBySchool'] as String,
          json['scheduleRepeatEvery'] as String,
          json['repeatWeekPositiveNumber'] as String,
          json['apply'] as String,
          json['dataSaved'] as String,
          json['futureRepeat'] as String,
          json['copySchedule'] as String,
          json['copySiblingsHelpText'] as String,
          json['closeMessage'] as String,
          json['headerTimeReg'] as String,
          json['week'] as String,
          json['jumpToWeek'] as String,
          json['nextWeek'] as String,
          json['lastWeek'] as String,
          json['pastWeekWarning'] as String,
          json['pastWeekCommentsWarning'] as String,
          json['weeks'] as String,
          json['today'] as String,
          json['yesterday'] as String,
          json['registrationDetails'] as String,
          json['notCheckedInYet'] as String,
          json['notCheckedOutYet'] as String,
          json['thisWeek'] as String,
          json['comments'] as String,
          json['timeRegRowLocked'] as String,
          json['commonCancel'] as String,
          json['repeatWeekX'] as String,
          json['repeatEvery'] as String,
          json['repeatUntilPastError'] as String,
          json['untilAfter'] as String,
          json['atTime'] as String,
          json['endTimeNextDay'] as String,
          json['extendPickupTime'] as String,
          json['editYourComment'] as String,
          json['commentsAndMore'] as String,
          json['timeRegistrationSaved'] as String,
          json['timeRegistrationDataSavedDescription'] as String,
          json['timesLockedBySchool'] as String,
        );

Map<String, dynamic> _$TimeregistrationAppDataTranslationsToJson(
        TimeregistrationAppDataTranslations instance) =>
    <String, dynamic>{
      'save': instance.save,
      'onLeave': instance.onLeave,
      'repeatThisWeek': instance.repeatThisWeek,
      'pickupTimeExtends': instance.pickupTimeExtends,
      'schoolClosed': instance.schoolClosed,
      'locked': instance.locked,
      'copyToSiblings': instance.copyToSiblings,
      'cannotEditPastRegistrations': instance.cannotEditPastRegistrations,
      'cannotScheduleOutsideOpeningHours':
          instance.cannotScheduleOutsideOpeningHours,
      'startBeforeEnd': instance.startBeforeEnd,
      'comment': instance.comment,
      'checkedIn': instance.checkedIn,
      'checkedOut': instance.checkedOut,
      'notCheckedIn': instance.notCheckedIn,
      'notCheckedOut': instance.notCheckedOut,
      'cannotEditPastComments': instance.cannotEditPastComments,
      'lockedBySchool': instance.lockedBySchool,
      'scheduleRepeatEvery': instance.scheduleRepeatEvery,
      'repeatWeekPositiveNumber': instance.repeatWeekPositiveNumber,
      'apply': instance.apply,
      'dataSaved': instance.dataSaved,
      'futureRepeat': instance.futureRepeat,
      'copySchedule': instance.copySchedule,
      'copySiblingsHelpText': instance.copySiblingsHelpText,
      'closeMessage': instance.closeMessage,
      'headerTimeReg': instance.headerTimeReg,
      'week': instance.week,
      'jumpToWeek': instance.jumpToWeek,
      'nextWeek': instance.nextWeek,
      'lastWeek': instance.lastWeek,
      'pastWeekWarning': instance.pastWeekWarning,
      'pastWeekCommentsWarning': instance.pastWeekCommentsWarning,
      'weeks': instance.weeks,
      'today': instance.today,
      'yesterday': instance.yesterday,
      'registrationDetails': instance.registrationDetails,
      'notCheckedInYet': instance.notCheckedInYet,
      'notCheckedOutYet': instance.notCheckedOutYet,
      'thisWeek': instance.thisWeek,
      'comments': instance.comments,
      'timeRegRowLocked': instance.timeRegRowLocked,
      'commonCancel': instance.commonCancel,
      'repeatWeekX': instance.repeatWeekX,
      'repeatEvery': instance.repeatEvery,
      'repeatUntilPastError': instance.repeatUntilPastError,
      'untilAfter': instance.untilAfter,
      'atTime': instance.atTime,
      'endTimeNextDay': instance.endTimeNextDay,
      'extendPickupTime': instance.extendPickupTime,
      'editYourComment': instance.editYourComment,
      'commentsAndMore': instance.commentsAndMore,
      'timeRegistrationSaved': instance.timeRegistrationSaved,
      'timeRegistrationDataSavedDescription':
          instance.timeRegistrationDataSavedDescription,
      'timesLockedBySchool': instance.timesLockedBySchool,
    };

TimeregistrationTimeRegistration _$TimeregistrationTimeRegistrationFromJson(
        Map<String, dynamic> json) =>
    TimeregistrationTimeRegistration(
      (json['days'] as List<dynamic>)
          .map((e) => TimeregistrationTimeRegistrationDay.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
    );

Map<String, dynamic> _$TimeregistrationTimeRegistrationToJson(
        TimeregistrationTimeRegistration instance) =>
    <String, dynamic>{
      'startDate': TimeregistrationTimeRegistration._dateNoMicroNullToJson(
          instance.startDate),
      'endDate': TimeregistrationTimeRegistration._dateNoMicroNullToJson(
          instance.endDate),
      'days': instance.days,
    };

TimeregistrationTimeRegistrationDay
    _$TimeregistrationTimeRegistrationDayFromJson(Map<String, dynamic> json) =>
        TimeregistrationTimeRegistrationDay(
          json['canEdit'] as bool,
          json['canEditComment'] as bool,
          DateTime.parse(json['date'] as String),
          json['endDateTime'] == null
              ? null
              : DateTime.parse(json['endDateTime'] as String),
          json['hasComments'] as bool,
          json['hasUnreadComments'] as bool,
          json['isLocked'] as bool,
          json['isSchoolClosed'] as bool,
          json['onLeave'] as bool,
          json['schoolClosedReason'] as String,
          DateTime.parse(json['schoolClosingTime'] as String),
          DateTime.parse(json['schoolOpeningTime'] as String),
          json['startDateTime'] == null
              ? null
              : DateTime.parse(json['startDateTime'] as String),
          (json['timeRegistrationId'] as num).toInt(),
        );

Map<String, dynamic> _$TimeregistrationTimeRegistrationDayToJson(
        TimeregistrationTimeRegistrationDay instance) =>
    <String, dynamic>{
      'date':
          TimeregistrationTimeRegistrationDay._dateNoMicroToJson(instance.date),
      'schoolOpeningTime':
          TimeregistrationTimeRegistrationDay._dateNoMicroToJson(
              instance.schoolOpeningTime),
      'schoolClosingTime':
          TimeregistrationTimeRegistrationDay._dateNoMicroToJson(
              instance.schoolClosingTime),
      'startDateTime':
          TimeregistrationTimeRegistrationDay._dateNoMicroNullToJson(
              instance.startDateTime),
      'endDateTime': TimeregistrationTimeRegistrationDay._dateNoMicroNullToJson(
          instance.endDateTime),
      'schoolClosedReason': instance.schoolClosedReason,
      'onLeave': instance.onLeave,
      'isLocked': instance.isLocked,
      'isSchoolClosed': instance.isSchoolClosed,
      'canEdit': instance.canEdit,
      'hasUnreadComments': instance.hasUnreadComments,
      'hasComments': instance.hasComments,
      'canEditComment': instance.canEditComment,
      'timeRegistrationId': instance.timeRegistrationId,
    };

TimeregistrationSaveResponse _$TimeregistrationSaveResponseFromJson(
        Map<String, dynamic> json) =>
    TimeregistrationSaveResponse(
      (json['notifications'] as List<dynamic>)
          .map((e) => TimeregistrationSaveResponseNotification.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['success'] as bool,
    );

Map<String, dynamic> _$TimeregistrationSaveResponseToJson(
        TimeregistrationSaveResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'notifications': instance.notifications,
    };

TimeregistrationSaveResponseNotification
    _$TimeregistrationSaveResponseNotificationFromJson(
            Map<String, dynamic> json) =>
        TimeregistrationSaveResponseNotification(
          json['message'] as String?,
          json['title'] as String?,
          json['type'] as String?,
        );

Map<String, dynamic> _$TimeregistrationSaveResponseNotificationToJson(
        TimeregistrationSaveResponseNotification instance) =>
    <String, dynamic>{
      'message': instance.message,
      'title': instance.title,
      'type': instance.type,
    };

TimeregistrationUserDay _$TimeregistrationUserDayFromJson(
        Map<String, dynamic> json) =>
    TimeregistrationUserDay(
      (json['timeRegistrationId'] as num).toInt(),
      json['canEdit'] as bool,
      json['canEditComment'] as bool,
      DateTime.parse(json['date'] as String),
      json['hasComments'] as bool,
      json['hasUnreadComments'] as bool,
      json['isLocked'] as bool,
      json['isSchoolClosed'] as bool,
      json['onLeave'] as bool,
      json['schoolClosedReason'] as String,
      DateTime.parse(json['schoolClosingTime'] as String),
      DateTime.parse(json['schoolOpeningTime'] as String),
      (json['commentId'] as num).toInt(),
      json['commentText'] as String,
      json['hasChanged'] as bool,
      $enumDecode(_$RegistrationTypeEnumMap, json['registrationType']),
      json['isCommentUpdated'] as bool,
    );

Map<String, dynamic> _$TimeregistrationUserDayToJson(
        TimeregistrationUserDay instance) =>
    <String, dynamic>{
      'date': TimeregistrationUserDay._dateNoMicroToJson(instance.date),
      'schoolOpeningTime': TimeregistrationUserDay._dateNoMicroToJson(
          instance.schoolOpeningTime),
      'schoolClosingTime': TimeregistrationUserDay._dateNoMicroToJson(
          instance.schoolClosingTime),
      'schoolClosedReason': instance.schoolClosedReason,
      'onLeave': instance.onLeave,
      'isLocked': instance.isLocked,
      'isSchoolClosed': instance.isSchoolClosed,
      'canEdit': instance.canEdit,
      'hasUnreadComments': instance.hasUnreadComments,
      'hasComments': instance.hasComments,
      'hasChanged': instance.hasChanged,
      'canEditComment': instance.canEditComment,
      'isCommentUpdated': instance.isCommentUpdated,
      'timeRegistrationId': instance.timeRegistrationId,
      'commentText': instance.commentText,
      'commentId': instance.commentId,
      'registrationType': _$RegistrationTypeEnumMap[instance.registrationType]!,
    };

const _$RegistrationTypeEnumMap = {
  RegistrationType.timeReg: 'TimeReg',
  RegistrationType.onLeave: 'OnLeave',
};

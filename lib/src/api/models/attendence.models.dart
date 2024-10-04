import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attendence.models.g.dart';

@JsonSerializable()
class AttendanceAppData {
  final AttendanceList pagedList;
  final AttendanceAppDataTranslations translations;
  final AttendanceAppDataUrls urls;
  List<dynamic> leaveRequests, absenceTodaySessions, absenceTomorrowSessions;
  DateTime absenceTodayDate, absenceTomorrowDate;
  String? absenceTomorrowComment, absenceTodayComment;

  bool autoConfirmAbsence,
      absentToday,
      absentTomorrow,
      absenceTodayLocked,
      absenceTomorrowLocked,
      canRegisterDayAbsence,
      canRegisterSessionAbsence,
      isIcelandic,
      canRegisterSession,
      showSubjects,
      showComment,
      showFilter,
      isPlaySchool,
      canAddSicknessToday,
      canAddSicknessTomorrow,
      isParent,
      hasLeaveLicence,
      canRequestLeave,
      hasLeaveTwoGuardiansLicence,
      isOnlyOneGuardianRegistered,
      isOver18Pupil;
  AttendanceAppData(
      this.urls,
      this.translations,
      this.pagedList,
      this.autoConfirmAbsence,
      this.absentToday,
      this.absentTomorrow,
      this.absenceTodayLocked,
      this.absenceTomorrowLocked,
      this.canRegisterDayAbsence,
      this.canRegisterSessionAbsence,
      this.isIcelandic,
      this.canRegisterSession,
      this.showSubjects,
      this.showComment,
      this.showFilter,
      this.isPlaySchool,
      this.canAddSicknessToday,
      this.canAddSicknessTomorrow,
      this.isParent,
      this.hasLeaveLicence,
      this.canRequestLeave,
      this.hasLeaveTwoGuardiansLicence,
      this.isOnlyOneGuardianRegistered,
      this.isOver18Pupil,
      this.absenceTodaySessions,
      this.absenceTomorrowSessions,
      this.leaveRequests,
      this.absenceTodayDate,
      this.absenceTomorrowDate,
      this.absenceTodayComment,
      this.absenceTomorrowComment);
  factory AttendanceAppData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceAppDataToJson(this);
}

@JsonSerializable()
class AttendanceAppDataUrls {
  Uri registerAttendance,
      registerSessionAttendance,
      saveAbsenceComment,
      createLeaveRequest,
      getLeaveRequestList,
      deleteLeaveRequest,
      setSecondaryStatus;

  AttendanceAppDataUrls(
      this.createLeaveRequest,
      this.deleteLeaveRequest,
      this.getLeaveRequestList,
      this.registerAttendance,
      this.registerSessionAttendance,
      this.saveAbsenceComment,
      this.setSecondaryStatus);
  factory AttendanceAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$AttendanceAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceAppDataUrlsToJson(this);
}

@JsonSerializable()
class AttendanceAppDataTranslations {
  String reportSickness,
      absenceReport,
      registrationDetails,
      dateLabel,
      timeLabel,
      subjectLabel,
      reasonLabel,
      registeredByLabel,
      fromLabel,
      comments,
      today,
      tomorrow,
      dateToday,
      dateTomorrow,
      clickToChange,
      markedAsPresent,
      markedAsAbsent,
      absenceInToday,
      absenceAwayToday,
      absenceAwayTodayLocked,
      absenceInTomorrow,
      absenceAwayTomorrow,
      absenceAwayTomorrowLocked,
      minutesLabel,
      halfDaysCount,
      pageCount,
      returnToList,
      prevItem,
      nextItem,
      apply,
      clear,
      save,
      edit,
      commentPlaceHolder,
      details,
      reportAbsence,
      absenceReported,
      reportedAbsent,
      reportAbsenceBannerMessage,
      reportAbsenceSubmitAbsence,
      reportNewAbsence,
      reportAbsenceApproved,
      reportAbsencePending,
      reportAbsenceAdvisoryTextPupil,
      allDay,
      reportAbsencePanelTitle,
      reportSicknessLeave,
      attendaceAlreadyRecorded,
      pastAttendance,
      pastAttendances,
      leaveRequestPanelTitle,
      leaveRequestRequestLeave,
      commonPending,
      leaveRequestApprovedStatus,
      leaveRequestRejectedStatus,
      leaveRequestDateFrom,
      leaveRequestDateTo,
      leaveRequestTimeFrom,
      leaveRequestTimeTo,
      leaveRequestDetailsPattern,
      leaveRequestDeleteButtonText,
      leaveRequestRequiredFieldsText,
      leaveRequestDeleteDialogTitle,
      leaveRequestDeleteDialogText,
      commonCancel,
      commonDelete,
      commonNoResultsText,
      commonSelectableListOfTimes,
      leaveRequestSubmitRequest,
      leaveRequestValidationMustFillBothTimesOrNeither,
      leaveRequestValidationToMustBeAfterFrom,
      leaveRequestSummaryDialogTitle,
      leaveRequestRequestDetails,
      leaveRequestDateFromTo,
      leaveRequestApplicationSubmittedBy,
      leaveRequestStatus,
      leaveRequestApprovalDetails,
      leaveRequestDeniedDetails,
      leaveRequestApprovedBy,
      leaveRequestDeniedBy,
      leaveRequestNotes,
      leaveRequestDeniedStatus,
      leaveRequestDeleteNotAllowedText,
      leaveRequestDeleteNotAllowedWhenApprovedDeniedText,
      commonExpired,
      leaveRequestOnlyOneGuardianRegistered,
      leaveRequestMustBeApprovedSecondaryGuardianNotificationWillBeSend,
      leaveRequestOnceYouSubmitItWillPending,
      leaveRequestAwaitingSecondaryApproval,
      leaveRequestAwaitingSchoolDecision,
      leaveRequestDeniedBySecondaryGuardian,
      commonDeniedByYou,
      leaveRequestApprove,
      leaveRequestOnlySubmitterCanRemove,
      leaveRequestAwaitingYourApproval,
      leaveRequestExpiredNoActionTaken,
      leaveRequestDenyRequest,
      reportAbsenceAdvisoryText;

  AttendanceAppDataTranslations(
      this.reportSickness,
      this.absenceReport,
      this.registrationDetails,
      this.dateLabel,
      this.timeLabel,
      this.subjectLabel,
      this.reasonLabel,
      this.registeredByLabel,
      this.fromLabel,
      this.comments,
      this.today,
      this.tomorrow,
      this.dateToday,
      this.dateTomorrow,
      this.clickToChange,
      this.markedAsPresent,
      this.markedAsAbsent,
      this.absenceInToday,
      this.absenceAwayToday,
      this.absenceAwayTodayLocked,
      this.absenceInTomorrow,
      this.absenceAwayTomorrow,
      this.absenceAwayTomorrowLocked,
      this.minutesLabel,
      this.halfDaysCount,
      this.pageCount,
      this.returnToList,
      this.prevItem,
      this.nextItem,
      this.apply,
      this.clear,
      this.save,
      this.edit,
      this.commentPlaceHolder,
      this.details,
      this.reportAbsence,
      this.absenceReported,
      this.reportedAbsent,
      this.reportAbsenceBannerMessage,
      this.reportAbsenceSubmitAbsence,
      this.reportNewAbsence,
      this.reportAbsenceApproved,
      this.reportAbsencePending,
      this.reportAbsenceAdvisoryTextPupil,
      this.allDay,
      this.reportAbsencePanelTitle,
      this.reportSicknessLeave,
      this.attendaceAlreadyRecorded,
      this.pastAttendance,
      this.pastAttendances,
      this.leaveRequestPanelTitle,
      this.leaveRequestRequestLeave,
      this.commonPending,
      this.leaveRequestApprovedStatus,
      this.leaveRequestRejectedStatus,
      this.leaveRequestDateFrom,
      this.leaveRequestDateTo,
      this.leaveRequestTimeFrom,
      this.leaveRequestTimeTo,
      this.leaveRequestDetailsPattern,
      this.leaveRequestDeleteButtonText,
      this.leaveRequestRequiredFieldsText,
      this.leaveRequestDeleteDialogTitle,
      this.leaveRequestDeleteDialogText,
      this.commonCancel,
      this.commonDelete,
      this.commonNoResultsText,
      this.commonSelectableListOfTimes,
      this.leaveRequestSubmitRequest,
      this.leaveRequestValidationMustFillBothTimesOrNeither,
      this.leaveRequestValidationToMustBeAfterFrom,
      this.leaveRequestSummaryDialogTitle,
      this.leaveRequestRequestDetails,
      this.leaveRequestDateFromTo,
      this.leaveRequestApplicationSubmittedBy,
      this.leaveRequestStatus,
      this.leaveRequestApprovalDetails,
      this.leaveRequestDeniedDetails,
      this.leaveRequestApprovedBy,
      this.leaveRequestDeniedBy,
      this.leaveRequestNotes,
      this.leaveRequestDeniedStatus,
      this.leaveRequestDeleteNotAllowedText,
      this.leaveRequestDeleteNotAllowedWhenApprovedDeniedText,
      this.commonExpired,
      this.leaveRequestOnlyOneGuardianRegistered,
      this.leaveRequestMustBeApprovedSecondaryGuardianNotificationWillBeSend,
      this.leaveRequestOnceYouSubmitItWillPending,
      this.leaveRequestAwaitingSecondaryApproval,
      this.leaveRequestAwaitingSchoolDecision,
      this.leaveRequestDeniedBySecondaryGuardian,
      this.commonDeniedByYou,
      this.leaveRequestApprove,
      this.leaveRequestOnlySubmitterCanRemove,
      this.leaveRequestAwaitingYourApproval,
      this.leaveRequestExpiredNoActionTaken,
      this.leaveRequestDenyRequest,
      this.reportAbsenceAdvisoryText);
  factory AttendanceAppDataTranslations.fromJson(Map<String, dynamic> json) =>
      _$AttendanceAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceAppDataTranslationsToJson(this);
}

// Start of attendanceList object

@JsonSerializable()
class AttendanceList {
  final AttendanceListTranslations translations;
  final AttendanceListHeaders headers;
  final AttendanceListFilters filters;
  List<AttendanceListItem> items;
  Uri listUrl;
  Uri? itemUrl;
  int page, pageSize, totalItems;
  dynamic allItemIds;
  bool more;
  AttendanceList(
      this.items,
      this.translations,
      this.headers,
      this.filters,
      this.allItemIds,
      this.itemUrl,
      this.listUrl,
      this.more,
      this.page,
      this.pageSize,
      this.totalItems);
  factory AttendanceList.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceListToJson(this);
}

@JsonSerializable()
class AttendanceListTranslations {
  String listTitle, paging, filter;

  AttendanceListTranslations(this.filter, this.listTitle, this.paging);
  factory AttendanceListTranslations.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceListTranslationsToJson(this);
}

@JsonSerializable()
class AttendanceListHeaders {
  final AttendanceListHeader date, time, subject, reason;
  AttendanceListHeaders(this.date, this.reason, this.subject, this.time);
  factory AttendanceListHeaders.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListHeadersFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceListHeadersToJson(this);
}

@JsonSerializable()
class AttendanceListHeader {
  String displayText, sortField;
  bool isSortable, sortBy, sortDesc;

  AttendanceListHeader(this.displayText, this.isSortable, this.sortBy,
      this.sortDesc, this.sortField);
  factory AttendanceListHeader.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListHeaderFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceListHeaderToJson(this);
}

@JsonSerializable()
class AttendanceListFilters {
  final AttendanceListFilterTranslations translations;
  List<dynamic> filters; // Returned an empty list during mapping, unknown type
  AttendanceListFilters(this.translations, this.filters);
  factory AttendanceListFilters.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListFiltersFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceListFiltersToJson(this);
}

@JsonSerializable()
class AttendanceListFilterTranslations {
  dynamic apply, clear; //Unknown type, returned null when mapping api
  AttendanceListFilterTranslations(this.apply, this.clear);
  factory AttendanceListFilterTranslations.fromJson(
          Map<String, dynamic> json) =>
      _$AttendanceListFilterTranslationsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AttendanceListFilterTranslationsToJson(this);
}

@JsonSerializable()
class AttendanceListItem {
  int id;

  @JsonKey(
    toJson: _minutesToJson,
    fromJson: _minutesFromJson,
  )
  final int? minutes;

  DateTime shortDate;
  @JsonKey(
    toJson: _timeToJson,
    fromJson: _timeFromJson,
  )
  DateTime? time;

  String? longDate,
      reason,
      subject,
      comment,
      registeredByName,
      establishmentName;
  dynamic halfDaysCount; //Unknown type, null during mapping
  AttendanceListItem(
      this.id,
      this.comment,
      this.establishmentName,
      this.halfDaysCount,
      this.longDate,
      this.minutes,
      this.reason,
      this.registeredByName,
      this.shortDate,
      this.subject,
      this.time);

  // Custom implementations
  static int? _minutesFromJson(String? val) =>
      val != null ? int.parse(val) : null;
  static String? _minutesToJson(int? val) => val.toString();

  static DateTime? _timeFromJson(String? val) =>
      val != null ? DateFormat.Hm().parse(val) : null;
  static String? _timeToJson(DateTime? val) =>
      val != null ? DateFormat.Hm().format(val) : null;

  factory AttendanceListItem.fromJson(Map<String, dynamic> json) =>
      _$AttendanceListItemFromJson(json);
  Map<String, dynamic> toJson() => _$AttendanceListItemToJson(this);
}

// End of attendanceList object
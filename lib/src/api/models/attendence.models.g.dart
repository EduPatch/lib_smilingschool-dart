// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendence.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceAppData _$AttendanceAppDataFromJson(Map<String, dynamic> json) =>
    AttendanceAppData(
      AttendanceAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
      AttendanceAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      AttendanceList.fromJson(json['pagedList'] as Map<String, dynamic>),
      json['autoConfirmAbsence'] as bool,
      json['absentToday'] as bool,
      json['absentTomorrow'] as bool,
      json['absenceTodayLocked'] as bool,
      json['absenceTomorrowLocked'] as bool,
      json['canRegisterDayAbsence'] as bool,
      json['canRegisterSessionAbsence'] as bool,
      json['isIcelandic'] as bool,
      json['canRegisterSession'] as bool,
      json['showSubjects'] as bool,
      json['showComment'] as bool,
      json['showFilter'] as bool,
      json['isPlaySchool'] as bool,
      json['canAddSicknessToday'] as bool,
      json['canAddSicknessTomorrow'] as bool,
      json['isParent'] as bool,
      json['hasLeaveLicence'] as bool,
      json['canRequestLeave'] as bool,
      json['hasLeaveTwoGuardiansLicence'] as bool,
      json['isOnlyOneGuardianRegistered'] as bool,
      json['isOver18Pupil'] as bool,
      json['absenceTodaySessions'] as List<dynamic>,
      json['absenceTomorrowSessions'] as List<dynamic>,
      json['leaveRequests'] as List<dynamic>,
      DateTime.parse(json['absenceTodayDate'] as String),
      DateTime.parse(json['absenceTomorrowDate'] as String),
      json['absenceTodayComment'] as String?,
      json['absenceTomorrowComment'] as String?,
    );

Map<String, dynamic> _$AttendanceAppDataToJson(AttendanceAppData instance) =>
    <String, dynamic>{
      'pagedList': instance.pagedList,
      'translations': instance.translations,
      'urls': instance.urls,
      'leaveRequests': instance.leaveRequests,
      'absenceTodaySessions': instance.absenceTodaySessions,
      'absenceTomorrowSessions': instance.absenceTomorrowSessions,
      'absenceTodayDate': instance.absenceTodayDate.toIso8601String(),
      'absenceTomorrowDate': instance.absenceTomorrowDate.toIso8601String(),
      'absenceTomorrowComment': instance.absenceTomorrowComment,
      'absenceTodayComment': instance.absenceTodayComment,
      'autoConfirmAbsence': instance.autoConfirmAbsence,
      'absentToday': instance.absentToday,
      'absentTomorrow': instance.absentTomorrow,
      'absenceTodayLocked': instance.absenceTodayLocked,
      'absenceTomorrowLocked': instance.absenceTomorrowLocked,
      'canRegisterDayAbsence': instance.canRegisterDayAbsence,
      'canRegisterSessionAbsence': instance.canRegisterSessionAbsence,
      'isIcelandic': instance.isIcelandic,
      'canRegisterSession': instance.canRegisterSession,
      'showSubjects': instance.showSubjects,
      'showComment': instance.showComment,
      'showFilter': instance.showFilter,
      'isPlaySchool': instance.isPlaySchool,
      'canAddSicknessToday': instance.canAddSicknessToday,
      'canAddSicknessTomorrow': instance.canAddSicknessTomorrow,
      'isParent': instance.isParent,
      'hasLeaveLicence': instance.hasLeaveLicence,
      'canRequestLeave': instance.canRequestLeave,
      'hasLeaveTwoGuardiansLicence': instance.hasLeaveTwoGuardiansLicence,
      'isOnlyOneGuardianRegistered': instance.isOnlyOneGuardianRegistered,
      'isOver18Pupil': instance.isOver18Pupil,
    };

AttendanceAppDataUrls _$AttendanceAppDataUrlsFromJson(
        Map<String, dynamic> json) =>
    AttendanceAppDataUrls(
      Uri.parse(json['createLeaveRequest'] as String),
      Uri.parse(json['deleteLeaveRequest'] as String),
      Uri.parse(json['getLeaveRequestList'] as String),
      Uri.parse(json['registerAttendance'] as String),
      Uri.parse(json['registerSessionAttendance'] as String),
      Uri.parse(json['saveAbsenceComment'] as String),
      Uri.parse(json['setSecondaryStatus'] as String),
    );

Map<String, dynamic> _$AttendanceAppDataUrlsToJson(
        AttendanceAppDataUrls instance) =>
    <String, dynamic>{
      'registerAttendance': instance.registerAttendance.toString(),
      'registerSessionAttendance':
          instance.registerSessionAttendance.toString(),
      'saveAbsenceComment': instance.saveAbsenceComment.toString(),
      'createLeaveRequest': instance.createLeaveRequest.toString(),
      'getLeaveRequestList': instance.getLeaveRequestList.toString(),
      'deleteLeaveRequest': instance.deleteLeaveRequest.toString(),
      'setSecondaryStatus': instance.setSecondaryStatus.toString(),
    };

AttendanceAppDataTranslations _$AttendanceAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    AttendanceAppDataTranslations(
      json['reportSickness'] as String,
      json['absenceReport'] as String,
      json['registrationDetails'] as String,
      json['dateLabel'] as String,
      json['timeLabel'] as String,
      json['subjectLabel'] as String,
      json['reasonLabel'] as String,
      json['registeredByLabel'] as String,
      json['fromLabel'] as String,
      json['comments'] as String,
      json['today'] as String,
      json['tomorrow'] as String,
      json['dateToday'] as String,
      json['dateTomorrow'] as String,
      json['clickToChange'] as String,
      json['markedAsPresent'] as String,
      json['markedAsAbsent'] as String,
      json['absenceInToday'] as String,
      json['absenceAwayToday'] as String,
      json['absenceAwayTodayLocked'] as String,
      json['absenceInTomorrow'] as String,
      json['absenceAwayTomorrow'] as String,
      json['absenceAwayTomorrowLocked'] as String,
      json['minutesLabel'] as String,
      json['halfDaysCount'] as String,
      json['pageCount'] as String,
      json['returnToList'] as String,
      json['prevItem'] as String,
      json['nextItem'] as String,
      json['apply'] as String,
      json['clear'] as String,
      json['save'] as String,
      json['edit'] as String,
      json['commentPlaceHolder'] as String,
      json['details'] as String,
      json['reportAbsence'] as String,
      json['absenceReported'] as String,
      json['reportedAbsent'] as String,
      json['reportAbsenceBannerMessage'] as String,
      json['reportAbsenceSubmitAbsence'] as String,
      json['reportNewAbsence'] as String,
      json['reportAbsenceApproved'] as String,
      json['reportAbsencePending'] as String,
      json['reportAbsenceAdvisoryTextPupil'] as String,
      json['allDay'] as String,
      json['reportAbsencePanelTitle'] as String,
      json['reportSicknessLeave'] as String,
      json['attendaceAlreadyRecorded'] as String,
      json['pastAttendance'] as String,
      json['pastAttendances'] as String,
      json['leaveRequestPanelTitle'] as String,
      json['leaveRequestRequestLeave'] as String,
      json['commonPending'] as String,
      json['leaveRequestApprovedStatus'] as String,
      json['leaveRequestRejectedStatus'] as String,
      json['leaveRequestDateFrom'] as String,
      json['leaveRequestDateTo'] as String,
      json['leaveRequestTimeFrom'] as String,
      json['leaveRequestTimeTo'] as String,
      json['leaveRequestDetailsPattern'] as String,
      json['leaveRequestDeleteButtonText'] as String,
      json['leaveRequestRequiredFieldsText'] as String,
      json['leaveRequestDeleteDialogTitle'] as String,
      json['leaveRequestDeleteDialogText'] as String,
      json['commonCancel'] as String,
      json['commonDelete'] as String,
      json['commonNoResultsText'] as String,
      json['commonSelectableListOfTimes'] as String,
      json['leaveRequestSubmitRequest'] as String,
      json['leaveRequestValidationMustFillBothTimesOrNeither'] as String,
      json['leaveRequestValidationToMustBeAfterFrom'] as String,
      json['leaveRequestSummaryDialogTitle'] as String,
      json['leaveRequestRequestDetails'] as String,
      json['leaveRequestDateFromTo'] as String,
      json['leaveRequestApplicationSubmittedBy'] as String,
      json['leaveRequestStatus'] as String,
      json['leaveRequestApprovalDetails'] as String,
      json['leaveRequestDeniedDetails'] as String,
      json['leaveRequestApprovedBy'] as String,
      json['leaveRequestDeniedBy'] as String,
      json['leaveRequestNotes'] as String,
      json['leaveRequestDeniedStatus'] as String,
      json['leaveRequestDeleteNotAllowedText'] as String,
      json['leaveRequestDeleteNotAllowedWhenApprovedDeniedText'] as String,
      json['commonExpired'] as String,
      json['leaveRequestOnlyOneGuardianRegistered'] as String,
      json['leaveRequestMustBeApprovedSecondaryGuardianNotificationWillBeSend']
          as String,
      json['leaveRequestOnceYouSubmitItWillPending'] as String,
      json['leaveRequestAwaitingSecondaryApproval'] as String,
      json['leaveRequestAwaitingSchoolDecision'] as String,
      json['leaveRequestDeniedBySecondaryGuardian'] as String,
      json['commonDeniedByYou'] as String,
      json['leaveRequestApprove'] as String,
      json['leaveRequestOnlySubmitterCanRemove'] as String,
      json['leaveRequestAwaitingYourApproval'] as String,
      json['leaveRequestExpiredNoActionTaken'] as String,
      json['leaveRequestDenyRequest'] as String,
      json['reportAbsenceAdvisoryText'] as String,
    );

Map<String, dynamic> _$AttendanceAppDataTranslationsToJson(
        AttendanceAppDataTranslations instance) =>
    <String, dynamic>{
      'reportSickness': instance.reportSickness,
      'absenceReport': instance.absenceReport,
      'registrationDetails': instance.registrationDetails,
      'dateLabel': instance.dateLabel,
      'timeLabel': instance.timeLabel,
      'subjectLabel': instance.subjectLabel,
      'reasonLabel': instance.reasonLabel,
      'registeredByLabel': instance.registeredByLabel,
      'fromLabel': instance.fromLabel,
      'comments': instance.comments,
      'today': instance.today,
      'tomorrow': instance.tomorrow,
      'dateToday': instance.dateToday,
      'dateTomorrow': instance.dateTomorrow,
      'clickToChange': instance.clickToChange,
      'markedAsPresent': instance.markedAsPresent,
      'markedAsAbsent': instance.markedAsAbsent,
      'absenceInToday': instance.absenceInToday,
      'absenceAwayToday': instance.absenceAwayToday,
      'absenceAwayTodayLocked': instance.absenceAwayTodayLocked,
      'absenceInTomorrow': instance.absenceInTomorrow,
      'absenceAwayTomorrow': instance.absenceAwayTomorrow,
      'absenceAwayTomorrowLocked': instance.absenceAwayTomorrowLocked,
      'minutesLabel': instance.minutesLabel,
      'halfDaysCount': instance.halfDaysCount,
      'pageCount': instance.pageCount,
      'returnToList': instance.returnToList,
      'prevItem': instance.prevItem,
      'nextItem': instance.nextItem,
      'apply': instance.apply,
      'clear': instance.clear,
      'save': instance.save,
      'edit': instance.edit,
      'commentPlaceHolder': instance.commentPlaceHolder,
      'details': instance.details,
      'reportAbsence': instance.reportAbsence,
      'absenceReported': instance.absenceReported,
      'reportedAbsent': instance.reportedAbsent,
      'reportAbsenceBannerMessage': instance.reportAbsenceBannerMessage,
      'reportAbsenceSubmitAbsence': instance.reportAbsenceSubmitAbsence,
      'reportNewAbsence': instance.reportNewAbsence,
      'reportAbsenceApproved': instance.reportAbsenceApproved,
      'reportAbsencePending': instance.reportAbsencePending,
      'reportAbsenceAdvisoryTextPupil': instance.reportAbsenceAdvisoryTextPupil,
      'allDay': instance.allDay,
      'reportAbsencePanelTitle': instance.reportAbsencePanelTitle,
      'reportSicknessLeave': instance.reportSicknessLeave,
      'attendaceAlreadyRecorded': instance.attendaceAlreadyRecorded,
      'pastAttendance': instance.pastAttendance,
      'pastAttendances': instance.pastAttendances,
      'leaveRequestPanelTitle': instance.leaveRequestPanelTitle,
      'leaveRequestRequestLeave': instance.leaveRequestRequestLeave,
      'commonPending': instance.commonPending,
      'leaveRequestApprovedStatus': instance.leaveRequestApprovedStatus,
      'leaveRequestRejectedStatus': instance.leaveRequestRejectedStatus,
      'leaveRequestDateFrom': instance.leaveRequestDateFrom,
      'leaveRequestDateTo': instance.leaveRequestDateTo,
      'leaveRequestTimeFrom': instance.leaveRequestTimeFrom,
      'leaveRequestTimeTo': instance.leaveRequestTimeTo,
      'leaveRequestDetailsPattern': instance.leaveRequestDetailsPattern,
      'leaveRequestDeleteButtonText': instance.leaveRequestDeleteButtonText,
      'leaveRequestRequiredFieldsText': instance.leaveRequestRequiredFieldsText,
      'leaveRequestDeleteDialogTitle': instance.leaveRequestDeleteDialogTitle,
      'leaveRequestDeleteDialogText': instance.leaveRequestDeleteDialogText,
      'commonCancel': instance.commonCancel,
      'commonDelete': instance.commonDelete,
      'commonNoResultsText': instance.commonNoResultsText,
      'commonSelectableListOfTimes': instance.commonSelectableListOfTimes,
      'leaveRequestSubmitRequest': instance.leaveRequestSubmitRequest,
      'leaveRequestValidationMustFillBothTimesOrNeither':
          instance.leaveRequestValidationMustFillBothTimesOrNeither,
      'leaveRequestValidationToMustBeAfterFrom':
          instance.leaveRequestValidationToMustBeAfterFrom,
      'leaveRequestSummaryDialogTitle': instance.leaveRequestSummaryDialogTitle,
      'leaveRequestRequestDetails': instance.leaveRequestRequestDetails,
      'leaveRequestDateFromTo': instance.leaveRequestDateFromTo,
      'leaveRequestApplicationSubmittedBy':
          instance.leaveRequestApplicationSubmittedBy,
      'leaveRequestStatus': instance.leaveRequestStatus,
      'leaveRequestApprovalDetails': instance.leaveRequestApprovalDetails,
      'leaveRequestDeniedDetails': instance.leaveRequestDeniedDetails,
      'leaveRequestApprovedBy': instance.leaveRequestApprovedBy,
      'leaveRequestDeniedBy': instance.leaveRequestDeniedBy,
      'leaveRequestNotes': instance.leaveRequestNotes,
      'leaveRequestDeniedStatus': instance.leaveRequestDeniedStatus,
      'leaveRequestDeleteNotAllowedText':
          instance.leaveRequestDeleteNotAllowedText,
      'leaveRequestDeleteNotAllowedWhenApprovedDeniedText':
          instance.leaveRequestDeleteNotAllowedWhenApprovedDeniedText,
      'commonExpired': instance.commonExpired,
      'leaveRequestOnlyOneGuardianRegistered':
          instance.leaveRequestOnlyOneGuardianRegistered,
      'leaveRequestMustBeApprovedSecondaryGuardianNotificationWillBeSend':
          instance
              .leaveRequestMustBeApprovedSecondaryGuardianNotificationWillBeSend,
      'leaveRequestOnceYouSubmitItWillPending':
          instance.leaveRequestOnceYouSubmitItWillPending,
      'leaveRequestAwaitingSecondaryApproval':
          instance.leaveRequestAwaitingSecondaryApproval,
      'leaveRequestAwaitingSchoolDecision':
          instance.leaveRequestAwaitingSchoolDecision,
      'leaveRequestDeniedBySecondaryGuardian':
          instance.leaveRequestDeniedBySecondaryGuardian,
      'commonDeniedByYou': instance.commonDeniedByYou,
      'leaveRequestApprove': instance.leaveRequestApprove,
      'leaveRequestOnlySubmitterCanRemove':
          instance.leaveRequestOnlySubmitterCanRemove,
      'leaveRequestAwaitingYourApproval':
          instance.leaveRequestAwaitingYourApproval,
      'leaveRequestExpiredNoActionTaken':
          instance.leaveRequestExpiredNoActionTaken,
      'leaveRequestDenyRequest': instance.leaveRequestDenyRequest,
      'reportAbsenceAdvisoryText': instance.reportAbsenceAdvisoryText,
    };

AttendanceList _$AttendanceListFromJson(Map<String, dynamic> json) =>
    AttendanceList(
      (json['items'] as List<dynamic>)
          .map((e) => AttendanceListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      AttendanceListTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      AttendanceListHeaders.fromJson(json['headers'] as Map<String, dynamic>),
      AttendanceListFilters.fromJson(json['filters'] as Map<String, dynamic>),
      json['allItemIds'],
      json['itemUrl'] == null ? null : Uri.parse(json['itemUrl'] as String),
      Uri.parse(json['listUrl'] as String),
      json['more'] as bool,
      (json['page'] as num).toInt(),
      (json['pageSize'] as num).toInt(),
      (json['totalItems'] as num).toInt(),
    );

Map<String, dynamic> _$AttendanceListToJson(AttendanceList instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'headers': instance.headers,
      'filters': instance.filters,
      'items': instance.items,
      'listUrl': instance.listUrl.toString(),
      'itemUrl': instance.itemUrl?.toString(),
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalItems': instance.totalItems,
      'allItemIds': instance.allItemIds,
      'more': instance.more,
    };

AttendanceListTranslations _$AttendanceListTranslationsFromJson(
        Map<String, dynamic> json) =>
    AttendanceListTranslations(
      json['filter'] as String,
      json['listTitle'] as String,
      json['paging'] as String,
    );

Map<String, dynamic> _$AttendanceListTranslationsToJson(
        AttendanceListTranslations instance) =>
    <String, dynamic>{
      'listTitle': instance.listTitle,
      'paging': instance.paging,
      'filter': instance.filter,
    };

AttendanceListHeaders _$AttendanceListHeadersFromJson(
        Map<String, dynamic> json) =>
    AttendanceListHeaders(
      AttendanceListHeader.fromJson(json['date'] as Map<String, dynamic>),
      AttendanceListHeader.fromJson(json['reason'] as Map<String, dynamic>),
      AttendanceListHeader.fromJson(json['subject'] as Map<String, dynamic>),
      AttendanceListHeader.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AttendanceListHeadersToJson(
        AttendanceListHeaders instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'subject': instance.subject,
      'reason': instance.reason,
    };

AttendanceListHeader _$AttendanceListHeaderFromJson(
        Map<String, dynamic> json) =>
    AttendanceListHeader(
      json['displayText'] as String,
      json['isSortable'] as bool,
      json['sortBy'] as bool,
      json['sortDesc'] as bool,
      json['sortField'] as String,
    );

Map<String, dynamic> _$AttendanceListHeaderToJson(
        AttendanceListHeader instance) =>
    <String, dynamic>{
      'displayText': instance.displayText,
      'sortField': instance.sortField,
      'isSortable': instance.isSortable,
      'sortBy': instance.sortBy,
      'sortDesc': instance.sortDesc,
    };

AttendanceListFilters _$AttendanceListFiltersFromJson(
        Map<String, dynamic> json) =>
    AttendanceListFilters(
      AttendanceListFilterTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      json['filters'] as List<dynamic>,
    );

Map<String, dynamic> _$AttendanceListFiltersToJson(
        AttendanceListFilters instance) =>
    <String, dynamic>{
      'translations': instance.translations,
      'filters': instance.filters,
    };

AttendanceListFilterTranslations _$AttendanceListFilterTranslationsFromJson(
        Map<String, dynamic> json) =>
    AttendanceListFilterTranslations(
      json['apply'],
      json['clear'],
    );

Map<String, dynamic> _$AttendanceListFilterTranslationsToJson(
        AttendanceListFilterTranslations instance) =>
    <String, dynamic>{
      'apply': instance.apply,
      'clear': instance.clear,
    };

AttendanceListItem _$AttendanceListItemFromJson(Map<String, dynamic> json) =>
    AttendanceListItem(
      (json['id'] as num).toInt(),
      json['comment'] as String?,
      json['establishmentName'] as String?,
      json['halfDaysCount'],
      json['longDate'] as String?,
      AttendanceListItem._minutesFromJson(json['minutes'] as String?),
      json['reason'] as String?,
      json['registeredByName'] as String?,
      DateTime.parse(json['shortDate'] as String),
      json['subject'] as String?,
      AttendanceListItem._timeFromJson(json['time'] as String?),
    );

Map<String, dynamic> _$AttendanceListItemToJson(AttendanceListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'minutes': AttendanceListItem._minutesToJson(instance.minutes),
      'shortDate': instance.shortDate.toIso8601String(),
      'time': AttendanceListItem._timeToJson(instance.time),
      'longDate': instance.longDate,
      'reason': instance.reason,
      'subject': instance.subject,
      'comment': instance.comment,
      'registeredByName': instance.registeredByName,
      'establishmentName': instance.establishmentName,
      'halfDaysCount': instance.halfDaysCount,
    };

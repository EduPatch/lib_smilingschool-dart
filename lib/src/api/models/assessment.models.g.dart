// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssessmentAppData _$AssessmentAppDataFromJson(Map<String, dynamic> json) =>
    AssessmentAppData(
      (json['academicYearItems'] as List<dynamic>)
          .map((e) => AssessmentAppDataAcademicYearItems.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      json['thirdSecurityInitData'],
      AssessmentAppDataNavigationModel.fromJson(
          json['navigationModel'] as Map<String, dynamic>),
      json['enableSummaryAssessment'] as bool,
      json['enableSummaryAssessmentLgr22'] as bool,
      json['isGymnasium'] as bool,
      json['isImpersonator'] as bool,
      json['enableGradeReport'] as bool,
      json['gradeReportTerms'],
      json['summaryAssessmentTerms'] as List<dynamic>,
      json['summaryAssessmentTermsLgr22'] as List<dynamic>,
      AssessmentAppDataTranslations.fromJson(
          json['translations'] as Map<String, dynamic>),
      AssessmentAppDataUrls.fromJson(json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssessmentAppDataToJson(AssessmentAppData instance) =>
    <String, dynamic>{
      'thirdSecurityInitData': instance.thirdSecurityInitData,
      'gradeReportTerms': instance.gradeReportTerms,
      'enableSummaryAssessment': instance.enableSummaryAssessment,
      'enableSummaryAssessmentLgr22': instance.enableSummaryAssessmentLgr22,
      'isGymnasium': instance.isGymnasium,
      'isImpersonator': instance.isImpersonator,
      'enableGradeReport': instance.enableGradeReport,
      'summaryAssessmentTerms': instance.summaryAssessmentTerms,
      'summaryAssessmentTermsLgr22': instance.summaryAssessmentTermsLgr22,
      'translations': instance.translations,
      'navigationModel': instance.navigationModel,
      'academicYearItems': instance.academicYearItems,
      'urls': instance.urls,
    };

AssessmentAppDataNavigationModel _$AssessmentAppDataNavigationModelFromJson(
        Map<String, dynamic> json) =>
    AssessmentAppDataNavigationModel(
      json['uolItemsList'] as List<dynamic>,
      (json['gridItemsList'] as List<dynamic>)
          .map((e) => AssessmentGridItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['selfAssessmentItemsList'] as List<dynamic>)
          .map((e) => AssessmentGridItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['navigationItemsList'] as List<dynamic>)
          .map((e) =>
              AssessmentNavigationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssessmentAppDataNavigationModelToJson(
        AssessmentAppDataNavigationModel instance) =>
    <String, dynamic>{
      'uolItemsList': instance.uolItemsList,
      'gridItemsList': instance.gridItemsList,
      'selfAssessmentItemsList': instance.selfAssessmentItemsList,
      'navigationItemsList': instance.navigationItemsList,
    };

AssessmentAppDataAcademicYearItems _$AssessmentAppDataAcademicYearItemsFromJson(
        Map<String, dynamic> json) =>
    AssessmentAppDataAcademicYearItems(
      json['key'] as String,
      json['selected'] as bool,
      json['value'] as String,
    );

Map<String, dynamic> _$AssessmentAppDataAcademicYearItemsToJson(
        AssessmentAppDataAcademicYearItems instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'selected': instance.selected,
    };

AssessmentAppDataTranslations _$AssessmentAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    AssessmentAppDataTranslations(
      json['newFlag'] as String,
      json['noAssessmentsExist'] as String,
      json['newAssessmentsInOtherFilters'] as String,
      json['newAssessmentInOtherFilters'] as String,
      json['noAssessmentsForDateRange'] as String,
      json['lblCurriculum'] as String,
      json['lblUOL'] as String,
      json['lblAssignments'] as String,
      json['lblLearningSteps'] as String,
      json['lblEvidence'] as String,
      json['lblNoEvidence'] as String,
      json['lblComments'] as String,
      json['lblNoComments'] as String,
      json['lblProgress'] as String,
      json['lblAllUpdates'] as String,
      json['lblCompleteList'] as String,
      json['lblSummaryStatements'] as String,
      json['lblCurriculumStatements'] as String,
      json['lblSummaryStatement'] as String,
      json['lblCurriculumStatement'] as String,
      json['lblPageCount'] as String,
      json['lblNextItem'] as String,
      json['lblPreviousItem'] as String,
      json['lblAssessments'] as String,
      json['lblLoading'] as String,
      json['lblCommentOnly'] as String,
      json['lblNotAvailableOnMobile'] as String,
      json['lblNoDesc'] as String,
      json['lblSubjects'] as String,
      json['lblUnits'] as String,
      json['lblShowCompleteCurriculum'] as String,
      json['lblShowAllStatements'] as String,
      json['lblNoStatements'] as String,
      json['noAssessmentsInYear'] as String,
      json['lblSelfAssessment'] as String,
      json['showTeacherMarks'] as String,
      json['hideTeacherMarks'] as String,
      json['enterNewComment'] as String,
      json['add'] as String,
      json['delete'] as String,
      json['edit'] as String,
      json['update'] as String,
      json['cancel'] as String,
      json['confirmLeave'] as String,
      json['leave'] as String,
      json['stay'] as String,
      json['updateAssessment'] as String,
      json['assessmentSaved'] as String,
      json['enterMark'] as String,
      json['confirmDeleteComment'] as String,
      json['invalidMark'] as String,
      json['invalidMarkOption'] as String,
      json['academicYear'] as String,
      json['assessments'] as String,
      json['assessmentReports'] as String,
      json['compactOverview'] as String,
      json['courses'] as String,
      json['currentAcademicYear'] as String,
      json['detailedView'] as String,
      json['download'] as String,
      json['graphicalOverview'] as String,
      json['graphicalOverviewAndCurriculumStatements'] as String,
      json['or'] as String,
      json['reports'] as String,
      json['reportType'] as String,
      json['multiSelectSelection'] as String,
      json['multiSelectAllItems'] as String,
      json['noResults'] as String,
      json['selectAll'] as String,
      json['selectASubject'] as String,
      json['selectACourse'] as String,
      json['generalCommentsDialogTitle'] as String,
      json['mainTabSummaryAssessmentLGR11'] as String,
      json['mainTabSummaryAssessmentLGR22'] as String,
      json['mainTabGrades'] as String,
      json['mainTabAssessment'] as String,
      json['summaryAssessment'] as String,
      json['subjects'] as String,
      json['comments'] as String,
      json['back'] as String,
      json['noSummaryAssessments'] as String,
      json['schoolActions'] as String,
      json['lblGroupedSummaryStatements'] as String,
      json['summaryAssessmentsLgr22_pageTitle'] as String,
      json['summaryAssessmentsLgr22_noResults'] as String,
      json['tableHeading_Subject'] as String,
      json['tableHeading_NotReached'] as String,
      json['tableHeading_Expected'] as String,
      json['tableHeading_Exceeding'] as String,
      json['dialogTitleLGR22'] as String,
      json['levelSelectorLabel'] as String,
    );

Map<String, dynamic> _$AssessmentAppDataTranslationsToJson(
        AssessmentAppDataTranslations instance) =>
    <String, dynamic>{
      'newFlag': instance.newFlag,
      'noAssessmentsExist': instance.noAssessmentsExist,
      'newAssessmentsInOtherFilters': instance.newAssessmentsInOtherFilters,
      'newAssessmentInOtherFilters': instance.newAssessmentInOtherFilters,
      'noAssessmentsForDateRange': instance.noAssessmentsForDateRange,
      'lblCurriculum': instance.lblCurriculum,
      'lblUOL': instance.lblUOL,
      'lblAssignments': instance.lblAssignments,
      'lblLearningSteps': instance.lblLearningSteps,
      'lblEvidence': instance.lblEvidence,
      'lblNoEvidence': instance.lblNoEvidence,
      'lblComments': instance.lblComments,
      'lblNoComments': instance.lblNoComments,
      'lblProgress': instance.lblProgress,
      'lblAllUpdates': instance.lblAllUpdates,
      'lblCompleteList': instance.lblCompleteList,
      'lblSummaryStatements': instance.lblSummaryStatements,
      'lblCurriculumStatements': instance.lblCurriculumStatements,
      'lblSummaryStatement': instance.lblSummaryStatement,
      'lblCurriculumStatement': instance.lblCurriculumStatement,
      'lblPageCount': instance.lblPageCount,
      'lblNextItem': instance.lblNextItem,
      'lblPreviousItem': instance.lblPreviousItem,
      'lblAssessments': instance.lblAssessments,
      'lblLoading': instance.lblLoading,
      'lblCommentOnly': instance.lblCommentOnly,
      'lblNotAvailableOnMobile': instance.lblNotAvailableOnMobile,
      'lblNoDesc': instance.lblNoDesc,
      'lblSubjects': instance.lblSubjects,
      'lblUnits': instance.lblUnits,
      'lblShowCompleteCurriculum': instance.lblShowCompleteCurriculum,
      'lblShowAllStatements': instance.lblShowAllStatements,
      'lblNoStatements': instance.lblNoStatements,
      'noAssessmentsInYear': instance.noAssessmentsInYear,
      'lblSelfAssessment': instance.lblSelfAssessment,
      'showTeacherMarks': instance.showTeacherMarks,
      'hideTeacherMarks': instance.hideTeacherMarks,
      'enterNewComment': instance.enterNewComment,
      'add': instance.add,
      'delete': instance.delete,
      'edit': instance.edit,
      'update': instance.update,
      'cancel': instance.cancel,
      'confirmLeave': instance.confirmLeave,
      'leave': instance.leave,
      'stay': instance.stay,
      'updateAssessment': instance.updateAssessment,
      'assessmentSaved': instance.assessmentSaved,
      'enterMark': instance.enterMark,
      'confirmDeleteComment': instance.confirmDeleteComment,
      'invalidMark': instance.invalidMark,
      'invalidMarkOption': instance.invalidMarkOption,
      'academicYear': instance.academicYear,
      'assessments': instance.assessments,
      'assessmentReports': instance.assessmentReports,
      'compactOverview': instance.compactOverview,
      'courses': instance.courses,
      'currentAcademicYear': instance.currentAcademicYear,
      'detailedView': instance.detailedView,
      'download': instance.download,
      'graphicalOverview': instance.graphicalOverview,
      'graphicalOverviewAndCurriculumStatements':
          instance.graphicalOverviewAndCurriculumStatements,
      'or': instance.or,
      'reports': instance.reports,
      'reportType': instance.reportType,
      'multiSelectSelection': instance.multiSelectSelection,
      'multiSelectAllItems': instance.multiSelectAllItems,
      'noResults': instance.noResults,
      'selectAll': instance.selectAll,
      'selectASubject': instance.selectASubject,
      'selectACourse': instance.selectACourse,
      'generalCommentsDialogTitle': instance.generalCommentsDialogTitle,
      'mainTabSummaryAssessmentLGR11': instance.mainTabSummaryAssessmentLGR11,
      'mainTabSummaryAssessmentLGR22': instance.mainTabSummaryAssessmentLGR22,
      'mainTabGrades': instance.mainTabGrades,
      'mainTabAssessment': instance.mainTabAssessment,
      'summaryAssessment': instance.summaryAssessment,
      'subjects': instance.subjects,
      'comments': instance.comments,
      'back': instance.back,
      'noSummaryAssessments': instance.noSummaryAssessments,
      'schoolActions': instance.schoolActions,
      'lblGroupedSummaryStatements': instance.lblGroupedSummaryStatements,
      'dialogTitleLGR22': instance.dialogTitleLGR22,
      'levelSelectorLabel': instance.levelSelectorLabel,
      'summaryAssessmentsLgr22_pageTitle':
          instance.summaryAssessmentsLgr22PageTitle,
      'summaryAssessmentsLgr22_noResults':
          instance.summaryAssessmentsLgr22NoResults,
      'tableHeading_Subject': instance.tableHeadingSubject,
      'tableHeading_NotReached': instance.tableHeadingNotReached,
      'tableHeading_Expected': instance.tableHeadingExpected,
      'tableHeading_Exceeding': instance.tableHeadingExceeding,
    };

AssessmentAppDataUrls _$AssessmentAppDataUrlsFromJson(
        Map<String, dynamic> json) =>
    AssessmentAppDataUrls(
      Uri.parse(json['getReportsDialog'] as String),
      Uri.parse(json['downloadReport'] as String),
      Uri.parse(json['getNavigationData'] as String),
      Uri.parse(json['getGridItems'] as String),
      Uri.parse(json['getGridDialog'] as String),
      Uri.parse(json['getGeneralComments'] as String),
      Uri.parse(json['getComments'] as String),
      Uri.parse(json['getUolItems'] as String),
      Uri.parse(json['getUolDialog'] as String),
      Uri.parse(json['getUolGeneralComments'] as String),
      Uri.parse(json['getTaskItems'] as String),
      Uri.parse(json['getTaskDialog'] as String),
      Uri.parse(json['getLearningStepItems'] as String),
      Uri.parse(json['getLearningStepDialog'] as String),
      Uri.parse(json['getSelfAssessmentItems'] as String),
      Uri.parse(json['getSelfAssessmentDialog'] as String),
      Uri.parse(json['saveMark'] as String),
      Uri.parse(json['saveComment'] as String),
      Uri.parse(json['deleteComment'] as String),
      Uri.parse(json['updateSelfAssessment'] as String),
      Uri.parse(json['updateNotificationState'] as String),
      Uri.parse(json['getSummaryAssessments'] as String),
      Uri.parse(json['getSummaryAssessmentsLgr22'] as String),
      Uri.parse(json['getSummaryAssessmentsForGym'] as String),
    );

Map<String, dynamic> _$AssessmentAppDataUrlsToJson(
        AssessmentAppDataUrls instance) =>
    <String, dynamic>{
      'getReportsDialog': instance.getReportsDialog.toString(),
      'downloadReport': instance.downloadReport.toString(),
      'getNavigationData': instance.getNavigationData.toString(),
      'getGridItems': instance.getGridItems.toString(),
      'getGridDialog': instance.getGridDialog.toString(),
      'getGeneralComments': instance.getGeneralComments.toString(),
      'getComments': instance.getComments.toString(),
      'getUolItems': instance.getUolItems.toString(),
      'getUolDialog': instance.getUolDialog.toString(),
      'getUolGeneralComments': instance.getUolGeneralComments.toString(),
      'getTaskItems': instance.getTaskItems.toString(),
      'getTaskDialog': instance.getTaskDialog.toString(),
      'getLearningStepItems': instance.getLearningStepItems.toString(),
      'getLearningStepDialog': instance.getLearningStepDialog.toString(),
      'getSelfAssessmentItems': instance.getSelfAssessmentItems.toString(),
      'getSelfAssessmentDialog': instance.getSelfAssessmentDialog.toString(),
      'saveMark': instance.saveMark.toString(),
      'saveComment': instance.saveComment.toString(),
      'deleteComment': instance.deleteComment.toString(),
      'updateSelfAssessment': instance.updateSelfAssessment.toString(),
      'updateNotificationState': instance.updateNotificationState.toString(),
      'getSummaryAssessments': instance.getSummaryAssessments.toString(),
      'getSummaryAssessmentsLgr22':
          instance.getSummaryAssessmentsLgr22.toString(),
      'getSummaryAssessmentsForGym':
          instance.getSummaryAssessmentsForGym.toString(),
    };

AssessmentLgr22 _$AssessmentLgr22FromJson(Map<String, dynamic> json) =>
    AssessmentLgr22(
      (json['summaryAssessmentMarks'] as List<dynamic>)
          .map((e) => AssessmentLgr22SummaryAssessmentMark.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssessmentLgr22ToJson(AssessmentLgr22 instance) =>
    <String, dynamic>{
      'summaryAssessmentMarks': instance.summaryAssessmentMarks,
    };

AssessmentLgr22SummaryAssessmentMark
    _$AssessmentLgr22SummaryAssessmentMarkFromJson(Map<String, dynamic> json) =>
        AssessmentLgr22SummaryAssessmentMark(
          (json['id'] as num).toInt(),
          (json['markState'] as num).toInt(),
          (json['groupedCompetenceId'] as num).toInt(),
          json['subject'] as String,
          json['hasMarks'] as bool,
        );

Map<String, dynamic> _$AssessmentLgr22SummaryAssessmentMarkToJson(
        AssessmentLgr22SummaryAssessmentMark instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'id': instance.id,
      'markState': instance.markState,
      'groupedCompetenceId': instance.groupedCompetenceId,
      'hasMarks': instance.hasMarks,
    };

AssessmentGridItem _$AssessmentGridItemFromJson(Map<String, dynamic> json) =>
    AssessmentGridItem(
      json['hasNew'] as bool,
      (json['id'] as num).toInt(),
      json['title'] as String,
    );

Map<String, dynamic> _$AssessmentGridItemToJson(AssessmentGridItem instance) =>
    <String, dynamic>{
      'hasNew': instance.hasNew,
      'title': instance.title,
      'id': instance.id,
    };

AssessmentNavigationItem _$AssessmentNavigationItemFromJson(
        Map<String, dynamic> json) =>
    AssessmentNavigationItem(
      (json['id'] as num).toInt(),
      json['title'] as String,
      json['hasGrids'] as bool,
      json['hasLearningSteps'] as bool,
      json['hasNewLearningStep'] as bool,
      json['hasNewSelfAssessment'] as bool,
      json['hasNewTask'] as bool,
      json['hasSelfAssessments'] as bool,
      json['hasTasks'] as bool,
      json['hasUols'] as bool,
      json['isOtherAssessment'] as bool,
      json['linkedGrids'] as List<dynamic>,
      json['linkedLearningSteps'] as List<dynamic>,
      json['linkedSelfAssessments'] as List<dynamic>,
      json['linkedUols'] as List<dynamic>,
    );

Map<String, dynamic> _$AssessmentNavigationItemToJson(
        AssessmentNavigationItem instance) =>
    <String, dynamic>{
      'linkedGrids': instance.linkedGrids,
      'linkedLearningSteps': instance.linkedLearningSteps,
      'linkedUols': instance.linkedUols,
      'linkedSelfAssessments': instance.linkedSelfAssessments,
      'isOtherAssessment': instance.isOtherAssessment,
      'hasGrids': instance.hasGrids,
      'hasUols': instance.hasUols,
      'hasSelfAssessments': instance.hasSelfAssessments,
      'hasTasks': instance.hasTasks,
      'hasNewTask': instance.hasNewTask,
      'hasLearningSteps': instance.hasLearningSteps,
      'hasNewLearningStep': instance.hasNewLearningStep,
      'hasNewSelfAssessment': instance.hasNewSelfAssessment,
      'title': instance.title,
      'id': instance.id,
    };

SelfAssessmentItem _$SelfAssessmentItemFromJson(Map<String, dynamic> json) =>
    SelfAssessmentItem(
      (json['contextId'] as num).toInt(),
      json['contextType'] as String,
      json['hasNew'] as bool,
      json['hasReports'] as bool,
      json['title'] as String,
      (json['statementItemsList'] as List<dynamic>)
          .map((e) => SelfAssessmentStatementItemListItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      (json['parentItemsList'] as List<dynamic>)
          .map((e) => AssessmentParentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['templateItemsList'] as List<dynamic>)
          .map(
              (e) => AssessmentTemplateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SelfAssessmentItemToJson(SelfAssessmentItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'contextType': instance.contextType,
      'hasNew': instance.hasNew,
      'hasReports': instance.hasReports,
      'contextId': instance.contextId,
      'statementItemsList': instance.statementItemsList,
      'parentItemsList': instance.parentItemsList,
      'templateItemsList': instance.templateItemsList,
    };

AssessmentParentItem _$AssessmentParentItemFromJson(
        Map<String, dynamic> json) =>
    AssessmentParentItem(
      (json['id'] as num).toInt(),
      (json['parentId'] as num?)?.toInt(),
      json['title'] as String,
    );

Map<String, dynamic> _$AssessmentParentItemToJson(
        AssessmentParentItem instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'id': instance.id,
      'title': instance.title,
    };

AssessmentTemplateItem _$AssessmentTemplateItemFromJson(
        Map<String, dynamic> json) =>
    AssessmentTemplateItem(
      (json['id'] as num).toInt(),
      (json['groupedSummaryCellId'] as num).toInt(),
      json['text'] as String,
    );

Map<String, dynamic> _$AssessmentTemplateItemToJson(
        AssessmentTemplateItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupedSummaryCellId': instance.groupedSummaryCellId,
      'text': instance.text,
    };

SelfAssessmentStatementItemListItem
    _$SelfAssessmentStatementItemListItemFromJson(Map<String, dynamic> json) =>
        SelfAssessmentStatementItemListItem(
          json['aspectType'] as String,
          DateTime.parse(json['dateStamp'] as String),
          (json['groupedCompetenceId'] as num).toInt(),
          json['hasComment'] as bool,
          json['hasEvidence'] as bool,
          json['headerLabel'] as String,
          Uri.parse(json['iconUrl'] as String),
          (json['id'] as num).toInt(),
          json['isBlankMark'] as bool,
          json['isLaroplan'] as bool,
          json['isPublished'] as bool,
          json['latestGeneralComment'] as String?,
          json['latestGeneralCommentDate'] == null
              ? null
              : DateTime.parse(json['latestGeneralCommentDate'] as String),
          json['mark'],
          (json['markId'] as num?)?.toInt(),
          SelfAssessmentStatementItemListItem._markDateFromJson(
              json['markLastUpdated'] as String),
          (json['markNumericValue'] as num?)?.toInt(),
          json['markOptionColour'] as String?,
          json['markSchemeType'],
          json['markTextValue'] as String?,
          (json['order'] as num).toInt(),
          json['orderingDate'] == null
              ? null
              : DateTime.parse(json['orderingDate'] as String),
          (json['parentId'] as num).toInt(),
          (json['row'] as num).toInt(),
          SelfAssessment.fromJson(
              json['selfAssessment'] as Map<String, dynamic>),
          json['showMark'] as bool,
          (json['templateId'] as num).toInt(),
          json['text'] as String,
        );

Map<String, dynamic> _$SelfAssessmentStatementItemListItemToJson(
        SelfAssessmentStatementItemListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'groupedCompetenceId': instance.groupedCompetenceId,
      'row': instance.row,
      'order': instance.order,
      'templateId': instance.templateId,
      'markId': instance.markId,
      'markNumericValue': instance.markNumericValue,
      'markTextValue': instance.markTextValue,
      'markOptionColour': instance.markOptionColour,
      'latestGeneralComment': instance.latestGeneralComment,
      'orderingDate': instance.orderingDate?.toIso8601String(),
      'latestGeneralCommentDate':
          instance.latestGeneralCommentDate?.toIso8601String(),
      'dateStamp': instance.dateStamp.toIso8601String(),
      'iconUrl': instance.iconUrl.toString(),
      'mark': instance.mark,
      'markSchemeType': instance.markSchemeType,
      'hasComment': instance.hasComment,
      'hasEvidence': instance.hasEvidence,
      'isBlankMark': instance.isBlankMark,
      'showMark': instance.showMark,
      'isPublished': instance.isPublished,
      'isLaroplan': instance.isLaroplan,
      'text': instance.text,
      'headerLabel': instance.headerLabel,
      'aspectType': instance.aspectType,
      'selfAssessment': instance.selfAssessment,
      'markLastUpdated': SelfAssessmentStatementItemListItem._markDateToJson(
          instance.markLastUpdated),
    };

SelfAssessment _$SelfAssessmentFromJson(Map<String, dynamic> json) =>
    SelfAssessment(
      json['hasComments'] as bool,
      json['hasValue'] as bool,
      Uri.parse(json['iconUrl'] as String),
      json['isBlankMark'] as bool,
      json['mark'],
      (json['markId'] as num?)?.toInt(),
      (json['markNumericValue'] as num?)?.toInt(),
      json['markOptionColour'] as String?,
      json['markSchemeType'],
      json['markTextValue'] as String?,
    );

Map<String, dynamic> _$SelfAssessmentToJson(SelfAssessment instance) =>
    <String, dynamic>{
      'iconUrl': instance.iconUrl.toString(),
      'markId': instance.markId,
      'markNumericValue': instance.markNumericValue,
      'isBlankMark': instance.isBlankMark,
      'hasComments': instance.hasComments,
      'hasValue': instance.hasValue,
      'markTextValue': instance.markTextValue,
      'markOptionColour': instance.markOptionColour,
      'mark': instance.mark,
      'markSchemeType': instance.markSchemeType,
    };

TaskAssessmentItem _$TaskAssessmentItemFromJson(Map<String, dynamic> json) =>
    TaskAssessmentItem(
      (json['contextId'] as num).toInt(),
      json['contextType'] as String,
      json['hasNew'] as bool,
      json['hasReports'] as bool,
      json['title'] as String?,
      (json['statementItemsList'] as List<dynamic>)
          .map((e) => TaskAssessmentStatementItemListItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      (json['parentItemsList'] as List<dynamic>)
          .map((e) => AssessmentParentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['templateItemsList'] as List<dynamic>)
          .map(
              (e) => AssessmentTemplateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskAssessmentItemToJson(TaskAssessmentItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'contextType': instance.contextType,
      'hasNew': instance.hasNew,
      'hasReports': instance.hasReports,
      'contextId': instance.contextId,
      'statementItemsList': instance.statementItemsList,
      'parentItemsList': instance.parentItemsList,
      'templateItemsList': instance.templateItemsList,
    };

TaskAssessmentStatementItemListItem
    _$TaskAssessmentStatementItemListItemFromJson(Map<String, dynamic> json) =>
        TaskAssessmentStatementItemListItem(
          json['aspectType'] as String,
          DateTime.parse(json['dateStamp'] as String),
          (json['groupedCompetenceId'] as num?)?.toInt(),
          json['hasComment'] as bool,
          json['hasEvidence'] as bool,
          json['headerLabel'] as String,
          Uri.parse(json['iconUrl'] as String),
          (json['id'] as num).toInt(),
          json['isBlankMark'] as bool,
          json['isLaroplan'] as bool,
          json['isPublished'] as bool,
          json['latestGeneralComment'] as String?,
          json['latestGeneralCommentDate'] == null
              ? null
              : DateTime.parse(json['latestGeneralCommentDate'] as String),
          json['mark'],
          (json['markId'] as num?)?.toInt(),
          TaskAssessmentStatementItemListItem._markDateFromJson(
              json['markLastUpdated'] as String),
          (json['markNumericValue'] as num?)?.toInt(),
          json['markOptionColour'] as String?,
          json['markSchemeType'] as String?,
          json['markTextValue'] as String?,
          (json['order'] as num).toInt(),
          json['orderingDate'] == null
              ? null
              : DateTime.parse(json['orderingDate'] as String),
          (json['parentId'] as num?)?.toInt(),
          (json['row'] as num).toInt(),
          json['showMark'] as bool,
          json['text'] as String?,
        );

Map<String, dynamic> _$TaskAssessmentStatementItemListItemToJson(
        TaskAssessmentStatementItemListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': instance.row,
      'order': instance.order,
      'markId': instance.markId,
      'markNumericValue': instance.markNumericValue,
      'groupedCompetenceId': instance.groupedCompetenceId,
      'parentId': instance.parentId,
      'markTextValue': instance.markTextValue,
      'markOptionColour': instance.markOptionColour,
      'latestGeneralComment': instance.latestGeneralComment,
      'text': instance.text,
      'markSchemeType': instance.markSchemeType,
      'orderingDate': instance.orderingDate?.toIso8601String(),
      'latestGeneralCommentDate':
          instance.latestGeneralCommentDate?.toIso8601String(),
      'dateStamp': instance.dateStamp.toIso8601String(),
      'iconUrl': instance.iconUrl.toString(),
      'mark': instance.mark,
      'hasComment': instance.hasComment,
      'hasEvidence': instance.hasEvidence,
      'isBlankMark': instance.isBlankMark,
      'showMark': instance.showMark,
      'isPublished': instance.isPublished,
      'isLaroplan': instance.isLaroplan,
      'headerLabel': instance.headerLabel,
      'aspectType': instance.aspectType,
      'markLastUpdated': TaskAssessmentStatementItemListItem._markDateToJson(
          instance.markLastUpdated),
    };

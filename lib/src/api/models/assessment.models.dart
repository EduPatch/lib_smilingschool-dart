import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'assessment.models.g.dart';

// APPDATA START
@JsonSerializable()
class AssessmentAppData {
  dynamic thirdSecurityInitData, gradeReportTerms;
  bool enableSummaryAssessment,
      enableSummaryAssessmentLgr22,
      isGymnasium,
      isImpersonator,
      enableGradeReport;
  List<dynamic> summaryAssessmentTerms, summaryAssessmentTermsLgr22;
  AssessmentAppDataTranslations translations;
  AssessmentAppDataNavigationModel navigationModel;
  List<AssessmentAppDataAcademicYearItems> academicYearItems;
  AssessmentAppDataUrls urls;
  AssessmentAppData(
      this.academicYearItems,
      this.thirdSecurityInitData,
      this.navigationModel,
      this.enableSummaryAssessment,
      this.enableSummaryAssessmentLgr22,
      this.isGymnasium,
      this.isImpersonator,
      this.enableGradeReport,
      this.gradeReportTerms,
      this.summaryAssessmentTerms,
      this.summaryAssessmentTermsLgr22,
      this.translations,
      this.urls);
  factory AssessmentAppData.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentAppDataToJson(this);
}

@JsonSerializable()
class AssessmentAppDataNavigationModel {
  List<dynamic> uolItemsList;
  List<AssessmentGridItem> gridItemsList, selfAssessmentItemsList;
  List<AssessmentNavigationItem> navigationItemsList;
  AssessmentAppDataNavigationModel(this.uolItemsList, this.gridItemsList,
      this.selfAssessmentItemsList, this.navigationItemsList);
  factory AssessmentAppDataNavigationModel.fromJson(
          Map<String, dynamic> json) =>
      _$AssessmentAppDataNavigationModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AssessmentAppDataNavigationModelToJson(this);
}

@JsonSerializable()
class AssessmentAppDataAcademicYearItems {
  String key, value;
  bool selected;
  AssessmentAppDataAcademicYearItems(this.key, this.selected, this.value);
  factory AssessmentAppDataAcademicYearItems.fromJson(
          Map<String, dynamic> json) =>
      _$AssessmentAppDataAcademicYearItemsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AssessmentAppDataAcademicYearItemsToJson(this);
}

@JsonSerializable()
class AssessmentAppDataTranslations {
  String newFlag,
      noAssessmentsExist,
      newAssessmentsInOtherFilters,
      newAssessmentInOtherFilters,
      noAssessmentsForDateRange,
      lblCurriculum,
      lblUOL,
      lblAssignments,
      lblLearningSteps,
      lblEvidence,
      lblNoEvidence,
      lblComments,
      lblNoComments,
      lblProgress,
      lblAllUpdates,
      lblCompleteList,
      lblSummaryStatements,
      lblCurriculumStatements,
      lblSummaryStatement,
      lblCurriculumStatement,
      lblPageCount,
      lblNextItem,
      lblPreviousItem,
      lblAssessments,
      lblLoading,
      lblCommentOnly,
      lblNotAvailableOnMobile,
      lblNoDesc,
      lblSubjects,
      lblUnits,
      lblShowCompleteCurriculum,
      lblShowAllStatements,
      lblNoStatements,
      noAssessmentsInYear,
      lblSelfAssessment,
      showTeacherMarks,
      hideTeacherMarks,
      enterNewComment,
      add,
      delete,
      edit,
      update,
      cancel,
      confirmLeave,
      leave,
      stay,
      updateAssessment,
      assessmentSaved,
      enterMark,
      confirmDeleteComment,
      invalidMark,
      invalidMarkOption,
      academicYear,
      assessments,
      assessmentReports,
      compactOverview,
      courses,
      currentAcademicYear,
      detailedView,
      download,
      graphicalOverview,
      graphicalOverviewAndCurriculumStatements,
      or,
      reports,
      reportType,
      multiSelectSelection,
      multiSelectAllItems,
      noResults,
      selectAll,
      selectASubject,
      selectACourse,
      generalCommentsDialogTitle,
      mainTabSummaryAssessmentLGR11,
      mainTabSummaryAssessmentLGR22,
      mainTabGrades,
      mainTabAssessment,
      summaryAssessment,
      subjects,
      comments,
      back,
      noSummaryAssessments,
      schoolActions,
      lblGroupedSummaryStatements,
      dialogTitleLGR22,
      levelSelectorLabel;
  @JsonKey(name: 'summaryAssessmentsLgr22_pageTitle')
  String summaryAssessmentsLgr22PageTitle;
  @JsonKey(name: 'summaryAssessmentsLgr22_noResults')
  String summaryAssessmentsLgr22NoResults;
  @JsonKey(name: 'tableHeading_Subject')
  String tableHeadingSubject;
  @JsonKey(name: 'tableHeading_NotReached')
  String tableHeadingNotReached;
  @JsonKey(name: 'tableHeading_Expected')
  String tableHeadingExpected;
  @JsonKey(name: 'tableHeading_Exceeding')
  String tableHeadingExceeding;
  AssessmentAppDataTranslations(
      this.newFlag,
      this.noAssessmentsExist,
      this.newAssessmentsInOtherFilters,
      this.newAssessmentInOtherFilters,
      this.noAssessmentsForDateRange,
      this.lblCurriculum,
      this.lblUOL,
      this.lblAssignments,
      this.lblLearningSteps,
      this.lblEvidence,
      this.lblNoEvidence,
      this.lblComments,
      this.lblNoComments,
      this.lblProgress,
      this.lblAllUpdates,
      this.lblCompleteList,
      this.lblSummaryStatements,
      this.lblCurriculumStatements,
      this.lblSummaryStatement,
      this.lblCurriculumStatement,
      this.lblPageCount,
      this.lblNextItem,
      this.lblPreviousItem,
      this.lblAssessments,
      this.lblLoading,
      this.lblCommentOnly,
      this.lblNotAvailableOnMobile,
      this.lblNoDesc,
      this.lblSubjects,
      this.lblUnits,
      this.lblShowCompleteCurriculum,
      this.lblShowAllStatements,
      this.lblNoStatements,
      this.noAssessmentsInYear,
      this.lblSelfAssessment,
      this.showTeacherMarks,
      this.hideTeacherMarks,
      this.enterNewComment,
      this.add,
      this.delete,
      this.edit,
      this.update,
      this.cancel,
      this.confirmLeave,
      this.leave,
      this.stay,
      this.updateAssessment,
      this.assessmentSaved,
      this.enterMark,
      this.confirmDeleteComment,
      this.invalidMark,
      this.invalidMarkOption,
      this.academicYear,
      this.assessments,
      this.assessmentReports,
      this.compactOverview,
      this.courses,
      this.currentAcademicYear,
      this.detailedView,
      this.download,
      this.graphicalOverview,
      this.graphicalOverviewAndCurriculumStatements,
      this.or,
      this.reports,
      this.reportType,
      this.multiSelectSelection,
      this.multiSelectAllItems,
      this.noResults,
      this.selectAll,
      this.selectASubject,
      this.selectACourse,
      this.generalCommentsDialogTitle,
      this.mainTabSummaryAssessmentLGR11,
      this.mainTabSummaryAssessmentLGR22,
      this.mainTabGrades,
      this.mainTabAssessment,
      this.summaryAssessment,
      this.subjects,
      this.comments,
      this.back,
      this.noSummaryAssessments,
      this.schoolActions,
      this.lblGroupedSummaryStatements,
      this.summaryAssessmentsLgr22PageTitle,
      this.summaryAssessmentsLgr22NoResults,
      this.tableHeadingSubject,
      this.tableHeadingNotReached,
      this.tableHeadingExpected,
      this.tableHeadingExceeding,
      this.dialogTitleLGR22,
      this.levelSelectorLabel);
  factory AssessmentAppDataTranslations.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentAppDataTranslationsToJson(this);
}

@JsonSerializable()
class AssessmentAppDataUrls {
  Uri getReportsDialog,
      downloadReport,
      getNavigationData,
      getGridItems,
      getGridDialog,
      getGeneralComments,
      getComments,
      getUolItems,
      getUolDialog,
      getUolGeneralComments,
      getTaskItems,
      getTaskDialog,
      getLearningStepItems,
      getLearningStepDialog,
      getSelfAssessmentItems,
      getSelfAssessmentDialog,
      saveMark,
      saveComment,
      deleteComment,
      updateSelfAssessment,
      updateNotificationState,
      getSummaryAssessments,
      getSummaryAssessmentsLgr22,
      getSummaryAssessmentsForGym;

  AssessmentAppDataUrls(
      this.getReportsDialog,
      this.downloadReport,
      this.getNavigationData,
      this.getGridItems,
      this.getGridDialog,
      this.getGeneralComments,
      this.getComments,
      this.getUolItems,
      this.getUolDialog,
      this.getUolGeneralComments,
      this.getTaskItems,
      this.getTaskDialog,
      this.getLearningStepItems,
      this.getLearningStepDialog,
      this.getSelfAssessmentItems,
      this.getSelfAssessmentDialog,
      this.saveMark,
      this.saveComment,
      this.deleteComment,
      this.updateSelfAssessment,
      this.updateNotificationState,
      this.getSummaryAssessments,
      this.getSummaryAssessmentsLgr22,
      this.getSummaryAssessmentsForGym);
  factory AssessmentAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentAppDataUrlsToJson(this);
}

// APPDATA END

// GetSummaryAssessmentsLgr22 START

@JsonSerializable()
class AssessmentLgr22 {
  List<AssessmentLgr22SummaryAssessmentMark> summaryAssessmentMarks;
  AssessmentLgr22(this.summaryAssessmentMarks);
  factory AssessmentLgr22.fromJson(Map<String, dynamic> json) =>
      _$AssessmentLgr22FromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentLgr22ToJson(this);
}

@JsonSerializable()
class AssessmentLgr22SummaryAssessmentMark {
  String subject;
  int id, markState, groupedCompetenceId;
  bool hasMarks;
  AssessmentLgr22SummaryAssessmentMark(this.id, this.markState,
      this.groupedCompetenceId, this.subject, this.hasMarks);
  factory AssessmentLgr22SummaryAssessmentMark.fromJson(
          Map<String, dynamic> json) =>
      _$AssessmentLgr22SummaryAssessmentMarkFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AssessmentLgr22SummaryAssessmentMarkToJson(this);
}

// GetSummaryAssessmentsLgr22 END

// GetNavigationItems START

// This is the same as selfAssessmentItem
@JsonSerializable()
class AssessmentGridItem {
  bool hasNew;
  String title;
  int id;
  AssessmentGridItem(this.hasNew, this.id, this.title);
  factory AssessmentGridItem.fromJson(Map<String, dynamic> json) =>
      _$AssessmentGridItemFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentGridItemToJson(this);
}

@JsonSerializable()
class AssessmentNavigationItem {
  List<dynamic> linkedGrids,
      linkedLearningSteps,
      linkedUols,
      linkedSelfAssessments;
  bool isOtherAssessment,
      hasGrids,
      hasUols,
      hasSelfAssessments,
      hasTasks,
      hasNewTask,
      hasLearningSteps,
      hasNewLearningStep,
      hasNewSelfAssessment;
  String title;
  int id;
  AssessmentNavigationItem(
      this.id,
      this.title,
      this.hasGrids,
      this.hasLearningSteps,
      this.hasNewLearningStep,
      this.hasNewSelfAssessment,
      this.hasNewTask,
      this.hasSelfAssessments,
      this.hasTasks,
      this.hasUols,
      this.isOtherAssessment,
      this.linkedGrids,
      this.linkedLearningSteps,
      this.linkedSelfAssessments,
      this.linkedUols);
  factory AssessmentNavigationItem.fromJson(Map<String, dynamic> json) =>
      _$AssessmentNavigationItemFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentNavigationItemToJson(this);
}

// GetNavigationItems END

// SelfAssessmentGetItems START

@JsonSerializable()
class SelfAssessmentItem {
  String title, contextType;
  bool hasNew, hasReports;
  int contextId;
  List<SelfAssessmentStatementItemListItem> statementItemsList;
  List<AssessmentParentItem> parentItemsList;
  List<AssessmentTemplateItem> templateItemsList;
  SelfAssessmentItem(
      this.contextId,
      this.contextType,
      this.hasNew,
      this.hasReports,
      this.title,
      this.statementItemsList,
      this.parentItemsList,
      this.templateItemsList);
  factory SelfAssessmentItem.fromJson(Map<String, dynamic> json) =>
      _$SelfAssessmentItemFromJson(json);
  Map<String, dynamic> toJson() => _$SelfAssessmentItemToJson(this);
}

@JsonSerializable()
class AssessmentParentItem {
  int? parentId;
  int id;
  String title;
  AssessmentParentItem(this.id, this.parentId, this.title);
  factory AssessmentParentItem.fromJson(Map<String, dynamic> json) =>
      _$AssessmentParentItemFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentParentItemToJson(this);
}

@JsonSerializable()
class AssessmentTemplateItem {
  int id, groupedSummaryCellId;
  String text;
  AssessmentTemplateItem(this.id, this.groupedSummaryCellId, this.text);
  factory AssessmentTemplateItem.fromJson(Map<String, dynamic> json) =>
      _$AssessmentTemplateItemFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentTemplateItemToJson(this);
}

@JsonSerializable()
class SelfAssessmentStatementItemListItem {
  int id, parentId, groupedCompetenceId, row, order, templateId;
  int? markId, markNumericValue;
  String? markTextValue, markOptionColour, latestGeneralComment, mark;
  DateTime? orderingDate, latestGeneralCommentDate;
  DateTime dateStamp;
  Uri iconUrl;
  dynamic markSchemeType;
  bool hasComment, hasEvidence, isBlankMark, showMark, isPublished, isLaroplan;
  String text, headerLabel, aspectType;
  SelfAssessment selfAssessment;

  @JsonKey(
    toJson: _markDateToJson,
    fromJson: _markDateFromJson,
  )
  DateTime? markLastUpdated;

  SelfAssessmentStatementItemListItem(
      this.aspectType,
      this.dateStamp,
      this.groupedCompetenceId,
      this.hasComment,
      this.hasEvidence,
      this.headerLabel,
      this.iconUrl,
      this.id,
      this.isBlankMark,
      this.isLaroplan,
      this.isPublished,
      this.latestGeneralComment,
      this.latestGeneralCommentDate,
      this.mark,
      this.markId,
      this.markLastUpdated,
      this.markNumericValue,
      this.markOptionColour,
      this.markSchemeType,
      this.markTextValue,
      this.order,
      this.orderingDate,
      this.parentId,
      this.row,
      this.selfAssessment,
      this.showMark,
      this.templateId,
      this.text);
  factory SelfAssessmentStatementItemListItem.fromJson(
          Map<String, dynamic> json) =>
      _$SelfAssessmentStatementItemListItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$SelfAssessmentStatementItemListItemToJson(this);

  static DateTime? _markDateFromJson(String val) =>
      val != "" ? DateFormat.yMd().parse(val) : null;
  static String _markDateToJson(DateTime? val) =>
      val != null ? val.toString() : "";
}

@JsonSerializable()
class SelfAssessment {
  Uri iconUrl;
  int? markId, markNumericValue;
  bool isBlankMark, hasComments, hasValue;
  String? markTextValue, markOptionColour, mark;
  dynamic markSchemeType;
  SelfAssessment(
      this.hasComments,
      this.hasValue,
      this.iconUrl,
      this.isBlankMark,
      this.mark,
      this.markId,
      this.markNumericValue,
      this.markOptionColour,
      this.markSchemeType,
      this.markTextValue);
  factory SelfAssessment.fromJson(Map<String, dynamic> json) =>
      _$SelfAssessmentFromJson(json);
  Map<String, dynamic> toJson() => _$SelfAssessmentToJson(this);
}

// SelfAssessmentGetItems END

// AssessmentTaskGetItems START

@JsonSerializable()
class TaskAssessmentItem {
  String? title;
  String contextType;
  bool hasNew, hasReports;
  int contextId;
  List<TaskAssessmentStatementItemListItem> statementItemsList;
  List<AssessmentParentItem> parentItemsList;
  List<AssessmentTemplateItem> templateItemsList;
  TaskAssessmentItem(
      this.contextId,
      this.contextType,
      this.hasNew,
      this.hasReports,
      this.title,
      this.statementItemsList,
      this.parentItemsList,
      this.templateItemsList);
  factory TaskAssessmentItem.fromJson(Map<String, dynamic> json) =>
      _$TaskAssessmentItemFromJson(json);
  Map<String, dynamic> toJson() => _$TaskAssessmentItemToJson(this);
}

@JsonSerializable()
class TaskAssessmentStatementItemListItem {
  int id, row, order;
  int? markId, markNumericValue, groupedCompetenceId, parentId;
  String? markTextValue,
      markOptionColour,
      latestGeneralComment,
      text,
      markSchemeType,
      mark;
  DateTime? orderingDate, latestGeneralCommentDate;
  DateTime dateStamp;
  Uri iconUrl;
  bool hasComment, hasEvidence, isBlankMark, showMark, isPublished, isLaroplan;
  String headerLabel, aspectType;

  @JsonKey(
    toJson: _markDateToJson,
    fromJson: _markDateFromJson,
  )
  DateTime? markLastUpdated;

  TaskAssessmentStatementItemListItem(
      this.aspectType,
      this.dateStamp,
      this.groupedCompetenceId,
      this.hasComment,
      this.hasEvidence,
      this.headerLabel,
      this.iconUrl,
      this.id,
      this.isBlankMark,
      this.isLaroplan,
      this.isPublished,
      this.latestGeneralComment,
      this.latestGeneralCommentDate,
      this.mark,
      this.markId,
      this.markLastUpdated,
      this.markNumericValue,
      this.markOptionColour,
      this.markSchemeType,
      this.markTextValue,
      this.order,
      this.orderingDate,
      this.parentId,
      this.row,
      this.showMark,
      this.text);
  factory TaskAssessmentStatementItemListItem.fromJson(
          Map<String, dynamic> json) =>
      _$TaskAssessmentStatementItemListItemFromJson(json);
  Map<String, dynamic> toJson() =>
      _$TaskAssessmentStatementItemListItemToJson(this);

  static DateTime? _markDateFromJson(String val) =>
      val != "" ? DateFormat.yMd().parse(val) : null;
  static String _markDateToJson(DateTime? val) =>
      val != null ? val.toString() : "";
}

// AssessmentTaskGetItems END

// AssessmentTaskGetDialog START

@JsonSerializable()
class TaskGetDialog {
  int id;
  int? summaryGroupedCellId, groupedCompetenceId;
  String? title;
  String text, headerLabel;
  @JsonKey(
    toJson: _dateStampToJson,
    fromJson: _dateStampFromJson,
  )
  DateTime? dateStamp;
  dynamic nameStamp;
  List<dynamic> evidence, statements;

  List<TaskGetDialogMarkItem> marks;

  TaskGetDialog(
      this.dateStamp,
      this.evidence,
      this.groupedCompetenceId,
      this.headerLabel,
      this.id,
      this.nameStamp,
      this.statements,
      this.summaryGroupedCellId,
      this.text,
      this.title,
      this.marks);
  factory TaskGetDialog.fromJson(Map<String, dynamic> json) =>
      _$TaskGetDialogFromJson(json);
  Map<String, dynamic> toJson() => _$TaskGetDialogToJson(this);

  static DateTime? _dateStampFromJson(String? val) =>
      val != "" ? DateFormat.yMd().parse(val ?? "1/1/1111") : null;
  static String _dateStampToJson(DateTime? val) =>
      val != null ? val.toString() : "";
}

@JsonSerializable()
class TaskGetDialogMarkItem {
  int id, aspectId, markOptionId, markSchemeId;
  int? markNumericValue;
  String? markOptionColour, mark, nameStamp;
  String markSchemeType, markTextValue, statementText;
  @JsonKey(
    toJson: _dateStampToJson,
    fromJson: _dateStampFromJson,
  )
  DateTime? dateStamp;
  DateTime dateModified;
  List<dynamic> comments;
  bool hasComment, hasValue, isBlankMark;
  Uri iconUrl;

  TaskGetDialogMarkItem(
      this.aspectId,
      this.comments,
      this.dateModified,
      this.dateStamp,
      this.hasComment,
      this.hasValue,
      this.iconUrl,
      this.id,
      this.isBlankMark,
      this.mark,
      this.markNumericValue,
      this.markOptionColour,
      this.markOptionId,
      this.markSchemeId,
      this.markSchemeType,
      this.markTextValue,
      this.nameStamp,
      this.statementText);
  factory TaskGetDialogMarkItem.fromJson(Map<String, dynamic> json) =>
      _$TaskGetDialogMarkItemFromJson(json);
  Map<String, dynamic> toJson() => _$TaskGetDialogMarkItemToJson(this);

  static DateTime? _dateStampFromJson(String? val) =>
      val != "" ? DateFormat.yMd().parse(val ?? "1/1/1111") : null;
  static String _dateStampToJson(DateTime? val) =>
      val != null ? val.toString() : "";
}


// AssessmentTaskGetDialog END
import 'package:json_annotation/json_annotation.dart';

part 'assessment.models.g.dart';

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
  AssessmentAppData(
      this.academicYearItems,
      this.thirdSecurityInitData,
      this.navigationModel,
      this.enableSummaryAssessment,
      this.enableSummaryAssessmentLgr22,
      this.isGymnasium,
      this.isImpersonator,
      this.enableGradeReport);
  factory AssessmentAppData.fromJson(Map<String, dynamic> json) =>
      _$AssessmentAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$AssessmentAppDataToJson(this);
}

@JsonSerializable()
class AssessmentAppDataNavigationModel {
  List<dynamic> uolItemsList,
      gridItemsList,
      selfAssessmentItemsList,
      navigationItemsList;
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

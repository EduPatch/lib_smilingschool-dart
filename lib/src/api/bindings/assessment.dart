import 'package:lib_smilingschool/src/api/models/assessment.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

class Assessment extends BaseAPI {
  Assessment({required super.client});

  Future<AssessmentAppData> appData(AssessmentAppDataTab tab) async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/assessmentv2/assessmentv2/appData",
            // tab and action seem to be the same for this endpoint
            queryParameters: {
          "codename": "assessmentsv2",
          "tab": tab.toString(),
          "action": tab.toString(),
          "_": 181020241502
        });
    return Future.value(AssessmentAppData.fromJson(rs?.data));
  }

  /// The IDs are the ones from the AcademicYearItems parameter in the appData
  /// Unsure if academic years are the same for all platforms, so for now there's no enum
  Future<AssessmentLgr22> getSummaryAsessmentsLgr22(
      List<int> academicYearIds) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/SummaryAssessments/GetSummaryAssessmentsLgr22",
        queryParameters: {"termId": academicYearIds.join(",")});
    return Future.value(AssessmentLgr22.fromJson(rs?.data));
  }

  /// The ID is the ones from the AcademicYearItems parameter in the appData
  /// Unsure if academic years are the same for all platforms, so for now there's no enum
  Future<AssessmentAppDataNavigationModel> getNavigationItems(
      int academicYearId) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/AssessmentV2/GetNavigationItems",
        queryParameters: {"academicYearId": academicYearId.toString()});
    return Future.value(AssessmentAppDataNavigationModel.fromJson(rs?.data));
  }

  /// The Academic year IDs are the ones from the AcademicYearItems parameter in the appData
  /// Unsure if academic years are the same for all platforms, so for now there's no enum
  ///
  /// The selfAssessmentId is an id of a self assessment, not all systems have this feature enabled!
  Future<SelfAssessmentItem> selfAssessmentGetItems(
      int selfAssessmentId, int academicYearId) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/AssessmentV2SelfAssessment/GetItems/$selfAssessmentId",
        queryParameters: {"academicYearId": academicYearId.toString()});
    return Future.value(SelfAssessmentItem.fromJson(rs?.data));
  }

  /// The Academic year IDs are the ones from the AcademicYearItems parameter in the appData
  /// Unsure if academic years are the same for all platforms, so for now there's no enum
  ///
  /// The taskId is an id of a task, not all systems have this feature enabled!
  Future<TaskAssessmentItem> taskGetItems(
      int taskId, int academicYearId) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/AssessmentV2Task/GetItems/$taskId",
        queryParameters: {"academicYearId": academicYearId.toString()});
    return Future.value(TaskAssessmentItem.fromJson(rs?.data));
  }

  /// The statement ID is found in a statement item found in the response from eg. taskGetItems
  Future<TaskGetDialog> taskGetDialog(int statementId) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/AssessmentV2Task/GetDialog",
        queryParameters: {"id": statementId});
    return Future.value(TaskGetDialog.fromJson(rs?.data));
  }

  /// The itemId is the ID of the self assessment
  /// The aspectId is the ID of the statementItem found in the response of eg. GetItems
  /// The academicYearId is an id from the AcademicYearItems parameter in the appData
  /// Unsure if academic years are the same for all platforms, so for now there's no enum
  Future<SelfAssessmentGetDialog> selfAssessmentGetDialog(
      int itemId, int aspectId, int academicYearId) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/AssessmentV2SelfAssessment/GetDialog/",
        queryParameters: {
          "uol": itemId,
          "aspectId": aspectId,
          "academicYearId": academicYearId
        });
    return Future.value(SelfAssessmentGetDialog.fromJson(rs?.data));
  }
}

enum AssessmentAppDataTab { summarylgr11, summaryAssessment, main, grades }

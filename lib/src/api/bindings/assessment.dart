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

  Future<AssessmentLgr22> getSummaryAsessmentsLgr22(List<int> ids) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/AssessmentV2/SummaryAssessments/GetSummaryAssessmentsLgr22",
        queryParameters: {"termId": ids.join(",")});
    return Future.value(AssessmentLgr22.fromJson(rs?.data));
  }
}

enum AssessmentAppDataTab { summarylgr11, summaryAssessment, main, grades }

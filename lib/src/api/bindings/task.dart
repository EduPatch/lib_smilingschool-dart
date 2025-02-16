import 'package:lib_smilingschool/src/api/models/task.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the task endpoints
class Task extends BaseAPI {
  Task({required super.client});

  /// AppData of the application, meant for use in Infomentor Hub but has use cases in user-apps as well!
  Future<TaskAppData> appData() async {
    var rs =
        await super.client?.post("https://hub.infomentor.se/task/task/appData");
    return Future.value(TaskAppData.fromJson(rs?.data));
  }

  /// Get all tasks
  /// AcademicYearIds can be fetched from the academicYears object in the appData filterOption
  ///
  /// We think the API allows for filtering for multiple courses, teachers and subjects
  /// However we couldn't test with more than one teacher and subject, so we have no idea how the format for multiple ones looks like
  ///
  /// If you happen to have multiple courses, subjects or teachers feel free to send us some of your api requests!
  ///
  /// Contact me on discord: sapmix
  ///
  /// - Edupatch Team
  Future<TaskTask> getTasks(int academicYearId,
      {int? subject, int? teacher, int? course}) async {
    var rs = await super
        .client
        ?.post("https://hub.infomentor.se/task/task/GetTasks", data: {
      "academicYearId": academicYearId.toString(),
      "subjects": subject?.toString(),
      "teachers": teacher?.toString(),
      "courses": course?.toString()
    });
    return Future.value(TaskTask.fromJson(rs?.data));
  }
}

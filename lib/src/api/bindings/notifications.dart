import 'package:lib_smilingschool/src/api/models/notifications.models.dart';
import 'package:lib_smilingschool/src/api_base.dart';

/// API Bindings for the notification endpoints
class Notifications extends BaseAPI {
  Notifications({required super.client});

  /// Get all notifications, timestamp can be translated to "since" (like notifications since 05/06/2024:00:00:00)
  ///
  /// Defaults to unix timestamp `0`, which gives you all notifications
  Future<NotificationsObject> getNotifications([DateTime? timestamp]) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/NotificationApp/NotificationApp/GetNotifications",
        data: {
          "timestamp": timestamp ?? DateTime.fromMillisecondsSinceEpoch(0)
        });
    return Future.value(NotificationsObject.fromJson(rs?.data));
  }

  /// Update the notification state of a notification with id=`id`
  Future<UpdateNotificationResult> updateNotificationState(
      List<int> ids, NotificationState state) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/NotificationApp/NotificationApp/UpdateNotificationState",
        data: {"ids": ids, "state": state});
    return Future.value(UpdateNotificationResult.fromJson(rs?.data));
  }

  /// Get application data, meant for use in hub but very useful for external apps as well
  Future<NotificationsAppData> appData() async {
    var rs = await super.client?.post(
          "https://hub.infomentor.se/NotificationApp/NotificationApp/appData",
        );
    return Future.value(NotificationsAppData.fromJson(rs?.data));
  }

  /// Pretty much the same as updateNotificationState but updated the notification state for assessments instead!
  Future<UpdateNotificationResult> updateAssessmentNotificationState(
      List<int> ids, NotificationState state) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/NotificationApp/NotificationApp/UpdateAssessmentNotificationState",
        data: {"ids": ids, "state": state});
    return Future.value(UpdateNotificationResult.fromJson(rs?.data));
  }
}

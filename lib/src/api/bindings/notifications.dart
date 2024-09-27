import 'package:lib_infomentor/src/api/models/notifications.models.dart';
import 'package:lib_infomentor/src/lib_infomentor_base.dart';

class Notifications extends BaseAPI {
  Notifications({required super.client});

  Future<NotificationsObject> getNotifications([DateTime? timestamp]) async {
    var rs = await super.client?.post(
        "https://hub.infomentor.se/NotificationApp/NotificationApp/GetNotifications",
        data: {
          "timestamp": timestamp ?? DateTime.fromMillisecondsSinceEpoch(0)
        });
    return Future.value(NotificationsObject.fromJson(rs?.data));
  }
}

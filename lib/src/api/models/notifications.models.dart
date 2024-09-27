import 'package:json_annotation/json_annotation.dart';

part 'notifications.models.g.dart';

// The notifications response
@JsonSerializable()
class NotificationsObject {
  final List<NotificationObject>? notifications;
  DateTime? timestamp;
  NotificationsObject(this.notifications, this.timestamp);
  factory NotificationsObject.fromJson(Map<String, dynamic> json) =>
      _$NotificationsObjectFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationsObjectToJson(this);
}

// A notification, weird I know
@JsonSerializable()
class NotificationObject {
  int id, pupilIM2Id;
  String title,
      subTitle,
      subjectsCourses,
      appType,
      state,
      type,
      pupilSourceId,
      entityTypeString;
  bool currentlySelectedPupil;
  Uri url;
  DateTime dateSent, orderDate;
  NotificationObject(
      this.id,
      this.pupilIM2Id,
      this.appType,
      this.currentlySelectedPupil,
      this.dateSent,
      this.entityTypeString,
      this.orderDate,
      this.pupilSourceId,
      this.state,
      this.subTitle,
      this.subjectsCourses,
      this.title,
      this.type,
      this.url);
  factory NotificationObject.fromJson(Map<String, dynamic> json) =>
      _$NotificationObjectFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationObjectToJson(this);
}

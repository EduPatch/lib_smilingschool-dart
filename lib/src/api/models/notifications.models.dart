import 'package:json_annotation/json_annotation.dart';

part 'notifications.models.g.dart';

enum NotificationState {
  @JsonValue("New")
  unread,
  @JsonValue("Seen")
  seen,
  @JsonValue("Read")
  read,
  @JsonValue("Cleared")
  cleared;

  @override
  String toString() {
    switch (this) {
      case NotificationState.unread:
        return "New";
      case NotificationState.read:
        return "Read";
      case NotificationState.cleared:
        return "Cleared";
      default:
        return "Seen";
    }
  }
}

// Response from UpdateNotificationState
@JsonSerializable()
class UpdateNotificationResult {
  bool success;
  UpdateNotificationResult(this.success);
  factory UpdateNotificationResult.fromJson(Map<String, dynamic> json) =>
      _$UpdateNotificationResultFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateNotificationResultToJson(this);
}

// Response from GetNotifications
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
      type,
      pupilSourceId,
      entityTypeString;
  NotificationState state;
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

// Response from appData
@JsonSerializable()
class NotificationsAppData {
  final List<NotificationObject>? notifications;
  DateTime? timestamp;
  NotificationsAppDataTranslations? translations;
  NotificationsAppDataUrls? urls;

  NotificationsAppData(
      this.notifications, this.timestamp, this.translations, this.urls);
  factory NotificationsAppData.fromJson(Map<String, dynamic> json) =>
      _$NotificationsAppDataFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationsAppDataToJson(this);
}

@JsonSerializable()
class NotificationsAppDataTranslations {
  String title,
      notificationsCleared,
      noNotifications,
      pupilName,
      clearList,
      undo,
      timeFormatJustNow,
      timeFormatMinutes,
      timeFormatHours,
      timeFormatYesterday;
  @JsonKey(name: 'new')
  String newNotifications;
  NotificationsAppDataTranslations(
      this.title,
      this.notificationsCleared,
      this.noNotifications,
      this.pupilName,
      this.clearList,
      this.undo,
      this.timeFormatJustNow,
      this.timeFormatMinutes,
      this.timeFormatHours,
      this.timeFormatYesterday,
      this.newNotifications);
  factory NotificationsAppDataTranslations.fromJson(
          Map<String, dynamic> json) =>
      _$NotificationsAppDataTranslationsFromJson(json);
  Map<String, dynamic> toJson() =>
      _$NotificationsAppDataTranslationsToJson(this);
}

@JsonSerializable()
class NotificationsAppDataUrls {
  Uri getAppNotifications, updateState;
  NotificationsAppDataUrls(this.getAppNotifications, this.updateState);
  factory NotificationsAppDataUrls.fromJson(Map<String, dynamic> json) =>
      _$NotificationsAppDataUrlsFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationsAppDataUrlsToJson(this);
}

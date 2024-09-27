// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNotificationResult _$UpdateNotificationResultFromJson(
        Map<String, dynamic> json) =>
    UpdateNotificationResult(
      json['success'] as bool,
    );

Map<String, dynamic> _$UpdateNotificationResultToJson(
        UpdateNotificationResult instance) =>
    <String, dynamic>{
      'success': instance.success,
    };

NotificationsObject _$NotificationsObjectFromJson(Map<String, dynamic> json) =>
    NotificationsObject(
      (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$NotificationsObjectToJson(
        NotificationsObject instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

NotificationObject _$NotificationObjectFromJson(Map<String, dynamic> json) =>
    NotificationObject(
      (json['id'] as num).toInt(),
      (json['pupilIM2Id'] as num).toInt(),
      json['appType'] as String,
      json['currentlySelectedPupil'] as bool,
      DateTime.parse(json['dateSent'] as String),
      json['entityTypeString'] as String,
      DateTime.parse(json['orderDate'] as String),
      json['pupilSourceId'] as String,
      $enumDecode(_$NotificationStateEnumMap, json['state']),
      json['subTitle'] as String,
      json['subjectsCourses'] as String,
      json['title'] as String,
      json['type'] as String,
      Uri.parse(json['url'] as String),
    );

Map<String, dynamic> _$NotificationObjectToJson(NotificationObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pupilIM2Id': instance.pupilIM2Id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'subjectsCourses': instance.subjectsCourses,
      'appType': instance.appType,
      'type': instance.type,
      'pupilSourceId': instance.pupilSourceId,
      'entityTypeString': instance.entityTypeString,
      'state': _$NotificationStateEnumMap[instance.state]!,
      'currentlySelectedPupil': instance.currentlySelectedPupil,
      'url': instance.url.toString(),
      'dateSent': instance.dateSent.toIso8601String(),
      'orderDate': instance.orderDate.toIso8601String(),
    };

const _$NotificationStateEnumMap = {
  NotificationState.unread: 'New',
  NotificationState.seen: 'Seen',
  NotificationState.read: 'Read',
  NotificationState.cleared: 'Cleared',
};

NotificationsAppData _$NotificationsAppDataFromJson(
        Map<String, dynamic> json) =>
    NotificationsAppData(
      (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      json['translations'] == null
          ? null
          : NotificationsAppDataTranslations.fromJson(
              json['translations'] as Map<String, dynamic>),
      json['urls'] == null
          ? null
          : NotificationsAppDataUrls.fromJson(
              json['urls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationsAppDataToJson(
        NotificationsAppData instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'timestamp': instance.timestamp?.toIso8601String(),
      'translations': instance.translations,
      'urls': instance.urls,
    };

NotificationsAppDataTranslations _$NotificationsAppDataTranslationsFromJson(
        Map<String, dynamic> json) =>
    NotificationsAppDataTranslations(
      json['title'] as String,
      json['notificationsCleared'] as String,
      json['noNotifications'] as String,
      json['pupilName'] as String,
      json['clearList'] as String,
      json['undo'] as String,
      json['timeFormatJustNow'] as String,
      json['timeFormatMinutes'] as String,
      json['timeFormatHours'] as String,
      json['timeFormatYesterday'] as String,
      json['new'] as String,
    );

Map<String, dynamic> _$NotificationsAppDataTranslationsToJson(
        NotificationsAppDataTranslations instance) =>
    <String, dynamic>{
      'title': instance.title,
      'notificationsCleared': instance.notificationsCleared,
      'noNotifications': instance.noNotifications,
      'pupilName': instance.pupilName,
      'clearList': instance.clearList,
      'undo': instance.undo,
      'timeFormatJustNow': instance.timeFormatJustNow,
      'timeFormatMinutes': instance.timeFormatMinutes,
      'timeFormatHours': instance.timeFormatHours,
      'timeFormatYesterday': instance.timeFormatYesterday,
      'new': instance.newNotifications,
    };

NotificationsAppDataUrls _$NotificationsAppDataUrlsFromJson(
        Map<String, dynamic> json) =>
    NotificationsAppDataUrls(
      Uri.parse(json['getAppNotifications'] as String),
      Uri.parse(json['updateState'] as String),
    );

Map<String, dynamic> _$NotificationsAppDataUrlsToJson(
        NotificationsAppDataUrls instance) =>
    <String, dynamic>{
      'getAppNotifications': instance.getAppNotifications.toString(),
      'updateState': instance.updateState.toString(),
    };

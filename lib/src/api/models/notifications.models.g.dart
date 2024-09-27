// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      json['state'] as String,
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
      'state': instance.state,
      'type': instance.type,
      'pupilSourceId': instance.pupilSourceId,
      'entityTypeString': instance.entityTypeString,
      'currentlySelectedPupil': instance.currentlySelectedPupil,
      'url': instance.url.toString(),
      'dateSent': instance.dateSent.toIso8601String(),
      'orderDate': instance.orderDate.toIso8601String(),
    };

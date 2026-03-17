// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NotificationModel', json, ($checkedConvert) {
      final val = NotificationModel(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        appid: $checkedConvert('appid', (v) => (v as num).toInt()),
        message: $checkedConvert('message', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        priority: $checkedConvert('priority', (v) => (v as num).toInt()),
        date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
        extras: $checkedConvert(
          'extras',
          (v) => v as Map<String, dynamic>? ?? const {},
        ),
      );
      return val;
    });

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appid': instance.appid,
      'message': instance.message,
      'title': instance.title,
      'priority': instance.priority,
      'date': instance.date.toIso8601String(),
      'is_read': instance.isRead,
      'extras': instance.extras,
    };

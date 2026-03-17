import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  const NotificationModel({
    required this.id,
    required this.appid,
    required this.message,
    required this.title,
    required this.priority,
    required this.date,
    this.isRead = false,
    this.extras = const {},
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  final int id;
  final int appid;
  final String message;
  final String title;
  final int priority;
  final DateTime date;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final bool isRead;
  final Map<String, dynamic> extras;

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}

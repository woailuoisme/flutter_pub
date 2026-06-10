import 'package:objectbox/objectbox.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_service.g.dart';

/// 通知消息实体
@Entity()
class NotificationEntity {
  NotificationEntity({
    this.id = 0,
    required this.appId,
    required this.message,
    required this.title,
    required this.priority,
    required this.date,
    required this.isRead,
    this.extras,
  });

  @Id(assignable: true)
  int id; // 对应 Gotify 的消息 ID

  int appId;
  String message;
  String title;
  int priority;

  @Property(type: PropertyType.date)
  DateTime date;

  String? extras; // JSON String

  bool isRead;
}

/// ObjectBox Store Provider
/// 该 Provider 在 main.dart 中被 override 注入初始化后的实例
@Riverpod(keepAlive: true)
Store databaseService(Ref ref) {
  throw UnimplementedError('databaseService has not been overridden');
}

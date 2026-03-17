import 'package:drift/drift.dart';
import 'package:lunchbox_hub/core/services/database_service.dart';
import 'package:lunchbox_hub/features/notifications/datasources/gotify_rest_client.dart';
import 'package:lunchbox_hub/features/notifications/datasources/gotify_websocket_service.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:lunchbox_hub/core/utils/mock_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';

part 'notification_repository.g.dart';

class NotificationRepository {
  NotificationRepository({
    required this.db,
    required this.restClient,
    required this.wsService,
  });

  final AppDatabase db;
  final GotifyRestClient restClient;
  final GotifyWebSocketService wsService;

  Stream<List<NotificationModel>> watchNotifications() {
    return (db.select(db.notifications)..orderBy([
          (t) => OrderingTerm(expression: t.date, mode: OrderingMode.desc),
        ]))
        .watch()
        .map((rows) => rows.map((row) => _mapRowToModel(row)).toList());
  }

  Future<void> fetchAndCacheMessages() async {
    try {
      final messages = await restClient.getMessages();
      await _cacheMessages(messages);
    } catch (e) {
      // API 失败时，为了演示效果， fallback 到 mock 数据
      // 实际开发中可以根据环境开关决定是否使用 mock
      final mockMessages = MockData.getNotifications();
      await _cacheMessages(mockMessages);
    }
  }

  Future<void> _cacheMessages(List<NotificationModel> messages) async {
    await db.batch((batch) {
      batch.insertAllOnConflictUpdate(
        db.notifications,
        messages.map((m) => _mapModelToCompanion(m)).toList(),
      );
    });
  }

  void startListening() {
    wsService.connect();
    wsService.stream.listen((message) async {
      await db
          .into(db.notifications)
          .insertOnConflictUpdate(_mapModelToCompanion(message));
    });
  }

  Stream<int> watchUnreadNotificationsCount() {
    return (db.select(
      db.notifications,
    )..where((t) => t.isRead.equals(false))).watch().map((rows) => rows.length);
  }

  Future<void> markAsRead(int id) async {
    await (db.update(db.notifications)..where((t) => t.id.equals(id))).write(
      const NotificationsCompanion(isRead: Value(true)),
    );
  }

  Future<void> markAllAsRead() async {
    await db
        .update(db.notifications)
        .write(const NotificationsCompanion(isRead: Value(true)));
  }

  NotificationModel _mapRowToModel(Notification row) {
    return NotificationModel(
      id: row.id,
      appid: row.appId,
      message: row.message,
      title: row.title,
      priority: row.priority,
      date: row.date,
      isRead: row.isRead,
      extras: row.extras != null
          ? jsonDecode(row.extras!) as Map<String, dynamic>
          : {},
    );
  }

  NotificationsCompanion _mapModelToCompanion(NotificationModel model) {
    return NotificationsCompanion.insert(
      id: Value(model.id),
      appId: model.appid,
      message: model.message,
      title: model.title,
      priority: model.priority,
      date: model.date,
      isRead: Value(model.isRead),
      extras: model.extras.isNotEmpty
          ? Value(jsonEncode(model.extras))
          : const Value.absent(),
    );
  }
}

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  final db = ref.watch(databaseServiceProvider);
  final restClient = ref.watch(gotifyRestClientProvider);
  final wsService = ref.watch(gotifyWebSocketServiceProvider);
  return NotificationRepository(
    db: db,
    restClient: restClient,
    wsService: wsService,
  );
}

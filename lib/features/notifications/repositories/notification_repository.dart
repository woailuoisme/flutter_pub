import 'dart:async';
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:lunchbox_hub/core/services/app_database.dart';
import 'package:lunchbox_hub/core/services/database_service.dart';
import 'package:lunchbox_hub/core/utils/mock_data.dart';
import 'package:lunchbox_hub/features/notifications/datasources/gotify_rest_client.dart';
import 'package:lunchbox_hub/features/notifications/datasources/gotify_websocket_service.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  // 异步写入缓冲区与定时器
  final List<NotificationEntry> _writeBuffer = [];
  Timer? _bufferTimer;

  Stream<List<NotificationModel>> watchNotifications() {
    final query = db.select(db.notificationEntries)
      ..orderBy([(t) => OrderingTerm.desc(t.date)]);
    return query.watch().map((rows) => rows.map(_mapEntryToModel).toList());
  }

  Future<void> fetchAndCacheMessages() async {
    try {
      final messages = await restClient.getMessages();
      await _cacheMessages(messages);
    } catch (e) {
      // API 失败时，为了演示效果， fallback 到 mock 数据
      final mockMessages = MockData.getNotifications();
      await _cacheMessages(mockMessages);
    }
  }

  Future<void> _cacheMessages(List<NotificationModel> messages) async {
    final entries = messages.map(_mapModelToCompanion).toList();
    await db.batch((batch) {
      batch.insertAllOnConflictUpdate(db.notificationEntries, entries);
    });
  }

  void startListening() {
    wsService.connect();
    wsService.stream.listen((message) {
      final entry = _mapModelToEntry(message);

      // 合并缓冲区内相同 ID 的消息进行去重
      _writeBuffer.removeWhere((item) => item.id == entry.id);
      _writeBuffer.add(entry);

      _bufferTimer?.cancel();
      if (_writeBuffer.length >= 10) {
        _flushBuffer();
      } else {
        _bufferTimer = Timer(const Duration(milliseconds: 200), _flushBuffer);
      }
    });
  }

  void _flushBuffer() {
    if (_writeBuffer.isEmpty) return;
    final entries = List<NotificationEntry>.from(_writeBuffer);
    _writeBuffer.clear();
    db.batch((batch) {
      batch.insertAllOnConflictUpdate(db.notificationEntries, entries);
    });
  }

  void dispose() {
    _bufferTimer?.cancel();
    _flushBuffer();
  }

  Stream<int> watchUnreadNotificationsCount() {
    final countExpr = db.notificationEntries.id.count();
    final query = db.selectOnly(db.notificationEntries)
      ..where(db.notificationEntries.isRead.equals(false))
      ..addColumns([countExpr]);
    return query.watchSingle().map((row) => row.read(countExpr) ?? 0);
  }

  Future<void> markAsRead(int id) async {
    await (db.update(db.notificationEntries)..where((t) => t.id.equals(id)))
        .write(const NotificationEntriesCompanion(isRead: Value(true)));
  }

  Future<void> markAllAsRead() async {
    await (db.update(db.notificationEntries)..where((t) => t.isRead.equals(false)))
        .write(const NotificationEntriesCompanion(isRead: Value(true)));
  }

  NotificationModel _mapEntryToModel(NotificationEntry entry) {
    return NotificationModel(
      id: entry.id,
      appid: entry.appId,
      message: entry.message,
      title: entry.title,
      priority: entry.priority,
      date: entry.date,
      isRead: entry.isRead,
      extras: entry.extras != null
          ? jsonDecode(entry.extras!) as Map<String, dynamic>
          : {},
    );
  }

  NotificationEntriesCompanion _mapModelToCompanion(NotificationModel model) {
    return NotificationEntriesCompanion(
      id: Value(model.id),
      appId: Value(model.appid),
      message: Value(model.message),
      title: Value(model.title),
      priority: Value(model.priority),
      date: Value(model.date),
      isRead: Value(model.isRead),
      extras: Value(model.extras.isNotEmpty ? jsonEncode(model.extras) : null),
    );
  }

  NotificationEntry _mapModelToEntry(NotificationModel model) {
    return NotificationEntry(
      id: model.id,
      appId: model.appid,
      message: model.message,
      title: model.title,
      priority: model.priority,
      date: model.date,
      isRead: model.isRead,
      extras: model.extras.isNotEmpty ? jsonEncode(model.extras) : null,
    );
  }
}

@riverpod
NotificationRepository notificationRepository(Ref ref) {
  final db = ref.watch(databaseServiceProvider);
  final restClient = ref.watch(gotifyRestClientProvider);
  final wsService = ref.watch(gotifyWebSocketServiceProvider);
  final repository = NotificationRepository(
    db: db,
    restClient: restClient,
    wsService: wsService,
  );
  ref.onDispose(repository.dispose);
  return repository;
}

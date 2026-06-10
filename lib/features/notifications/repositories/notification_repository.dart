import 'package:lunchbox_hub/core/services/database_service.dart';
import 'package:lunchbox_hub/features/notifications/datasources/gotify_rest_client.dart';
import 'package:lunchbox_hub/features/notifications/datasources/gotify_websocket_service.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:lunchbox_hub/core/utils/mock_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:lunchbox_hub/objectbox.g.dart';
import 'dart:convert';
import 'dart:async';

part 'notification_repository.g.dart';

class NotificationRepository {
  NotificationRepository({
    required this.store,
    required this.restClient,
    required this.wsService,
  }) : _box = store.box<NotificationEntity>();

  final Store store;
  final Box<NotificationEntity> _box;
  final GotifyRestClient restClient;
  final GotifyWebSocketService wsService;

  // 异步写入缓冲区与定时器
  final List<NotificationEntity> _writeBuffer = [];
  Timer? _bufferTimer;

  Stream<List<NotificationModel>> watchNotifications() {
    final builder = _box.query()
      ..order(NotificationEntity_.date, flags: Order.descending);
    return builder
        .watch(triggerImmediately: true)
        .map((query) => query.find().map((entity) => _mapEntityToModel(entity)).toList());
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
    final entities = messages.map((m) => _mapModelToEntity(m)).toList();
    _box.putMany(entities);
  }

  void startListening() {
    wsService.connect();
    wsService.stream.listen((message) {
      final entity = _mapModelToEntity(message);
      
      // 合并缓冲区内相同 ID 的消息进行去重
      _writeBuffer.removeWhere((item) => item.id == entity.id);
      _writeBuffer.add(entity);

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
    _box.putMany(List.from(_writeBuffer));
    _writeBuffer.clear();
  }

  void dispose() {
    _bufferTimer?.cancel();
    _flushBuffer();
  }

  Stream<int> watchUnreadNotificationsCount() {
    final builder = _box.query(NotificationEntity_.isRead.equals(false));
    return builder.watch(triggerImmediately: true).map((query) => query.count());
  }

  Future<void> markAsRead(int id) async {
    final entity = _box.get(id);
    if (entity != null) {
      entity.isRead = true;
      _box.put(entity);
    }
  }

  Future<void> markAllAsRead() async {
    final query = _box.query(NotificationEntity_.isRead.equals(false)).build();
    final unread = query.find();
    query.close();
    if (unread.isNotEmpty) {
      for (final entity in unread) {
        entity.isRead = true;
      }
      _box.putMany(unread);
    }
  }

  NotificationModel _mapEntityToModel(NotificationEntity entity) {
    return NotificationModel(
      id: entity.id,
      appid: entity.appId,
      message: entity.message,
      title: entity.title,
      priority: entity.priority,
      date: entity.date,
      isRead: entity.isRead,
      extras: entity.extras != null
          ? jsonDecode(entity.extras!) as Map<String, dynamic>
          : {},
    );
  }

  NotificationEntity _mapModelToEntity(NotificationModel model) {
    return NotificationEntity(
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
    store: db,
    restClient: restClient,
    wsService: wsService,
  );
  ref.onDispose(repository.dispose);
  return repository;
}

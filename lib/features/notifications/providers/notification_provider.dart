import 'package:lunchbox_hub/features/notifications/repositories/notification_repository.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  Stream<List<NotificationModel>> build() {
    final repository = ref.watch(notificationRepositoryProvider);
    repository.startListening();
    repository.fetchAndCacheMessages();
    return repository.watchNotifications();
  }

  Future<void> markAsRead(int id) async {
    await ref.read(notificationRepositoryProvider).markAsRead(id);
  }

  Future<void> markAllAsRead() async {
    await ref.read(notificationRepositoryProvider).markAllAsRead();
  }

  Future<void> refreshMessages() async {
    await ref.read(notificationRepositoryProvider).fetchAndCacheMessages();
  }
}

@riverpod
Stream<int> unreadNotificationsCount(Ref ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return repository.watchUnreadNotificationsCount().map((int count) => count);
}

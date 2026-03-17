import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:lunchbox_hub/features/notifications/providers/notification_provider.dart';
import 'package:lunchbox_hub/features/notifications/widgets/notification_tile.dart';
import 'package:lunchbox_hub/features/notifications/widgets/notification_empty_state.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/custom_refresh_view.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// 消息通知列表页面
///
/// 采用结构化 Widget 设计，支持高可用下拉刷新和错误重试机制
class NotificationListScreen extends ConsumerWidget {
  const NotificationListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsAsync = ref.watch(notificationProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: Text(t.notifications.title),
        centerTitle: false,
        actions: [
          TextButton.icon(
            onPressed: () =>
                ref.read(notificationProvider.notifier).markAllAsRead(),
            icon: const Icon(Icons.done_all_rounded, size: 20),
            label: Text(t.notifications.markAllRead),
            style: TextButton.styleFrom(foregroundColor: colorScheme.primary),
          ),
          SizedBox(width: AppDesignTokens.spacingS),
        ],
      ),
      body: notificationsAsync.when(
        data: (List<NotificationModel> notifications) => CustomRefreshView(
          onRefresh: () async {
            return ref.read(notificationProvider.notifier).refreshMessages();
          },
          child: notifications.isEmpty
              ? const NotificationEmptyState()
              : ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDesignTokens.spacingM,
                    vertical: AppDesignTokens.spacingM,
                  ),
                  itemCount: notifications.length,
                  separatorBuilder: (context, index) =>
                      SizedBox(height: AppDesignTokens.spacingM),
                  itemBuilder: (context, index) {
                    final notification = notifications[index];
                    return NotificationTile(notification: notification);
                  },
                ),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: colorScheme.primary.withValues(alpha: 0.5),
          ),
        ),
        error: (error, stack) => _buildErrorState(context, ref, t),
      ),
    );
  }

  /// 构建错误状态界面
  Widget _buildErrorState(BuildContext context, WidgetRef ref, Translations t) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppDesignTokens.spacingXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(AppDesignTokens.spacingL),
              decoration: BoxDecoration(
                color: colorScheme.errorContainer.withValues(alpha: 0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.cloud_off_rounded,
                size: 48,
                color: colorScheme.error,
              ),
            ),
            SizedBox(height: AppDesignTokens.spacingL),
            Text(
              t.common.loadFailed,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppDesignTokens.spacingS),
            Text(
              "请检查网络连接或稍后重试",
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppDesignTokens.spacingXL),
            FilledButton.icon(
              onPressed: () => ref.invalidate(notificationProvider),
              icon: const Icon(Icons.refresh_rounded),
              label: Text(t.common.retry),
              style: FilledButton.styleFrom(
                minimumSize: const Size(160, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
                ),
              ),
            ),
          ],
        ),
      ).animate().fadeIn().scale(begin: const Offset(0.9, 0.9)),
    );
  }
}

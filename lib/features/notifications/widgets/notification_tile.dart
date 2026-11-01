import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:lunchbox_hub/features/notifications/providers/notification_provider.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:intl/intl.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 通知消息卡片组件
///
/// 结构化展示单条消息，包含动态优先级颜色、已读状态指示和 Markdown 内容
class NotificationTile extends ConsumerWidget {
  const NotificationTile({required this.notification, super.key});

  final NotificationModel notification;

  /// 根据优先级获取对应的装饰颜色
  Color _getPriorityColor(int priority) {
    if (priority >= 7) return AppDesignTokens.error;
    if (priority >= 4) return AppDesignTokens.warning;
    return AppDesignTokens.success;
  }

  /// 根据优先级获取对应的文本标签
  String _getPriorityLabel(int priority, Translations t) {
    if (priority >= 7) return t.notifications.priority.high;
    if (priority >= 4) return t.notifications.priority.medium;
    return t.notifications.priority.low;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = Translations.of(context);
    final dateStr = DateFormat('MM-dd HH:mm').format(notification.date);
    final priorityColor = _getPriorityColor(notification.priority);

    return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: notification.isRead
                    ? theme.cardColor
                    : colorScheme.primaryContainer.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
                boxShadow: notification.isRead
                    ? null
                    : [
                        BoxShadow(
                          color: colorScheme.primary.withValues(alpha: 0.08),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                border: Border.all(
                  color: notification.isRead
                      ? theme.dividerColor.withValues(alpha: 0.1)
                      : colorScheme.primary.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
                  onTap: () {
                    if (!notification.isRead) {
                      ref
                          .read(notificationProvider.notifier)
                          .markAsRead(notification.id);
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(AppDesignTokens.spacingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // 状态指示器与标题
                            Expanded(
                              child: Text(
                                notification.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.titleSmall?.copyWith(
                                  fontWeight: notification.isRead
                                      ? FontWeight.w500
                                      : FontWeight.bold,
                                  color: notification.isRead
                                      ? colorScheme.onSurfaceVariant
                                      : colorScheme.onSurface,
                                ),
                              ),
                            ),
                            SizedBox(width: AppDesignTokens.spacingS),
                            // 时间
                            Text(
                              dateStr,
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.outline,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppDesignTokens.spacingS),
                        Row(
                          children: [
                            // 优先级标签
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: priorityColor.withValues(alpha: 0.08),
                                borderRadius: BorderRadius.circular(
                                  AppDesignTokens.radiusS,
                                ),
                                border: Border.all(
                                  color: priorityColor.withValues(alpha: 0.2),
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: priorityColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    _getPriorityLabel(notification.priority, t),
                                    style: textTheme.labelSmall?.copyWith(
                                      color: priorityColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppDesignTokens.spacingM),
                        // 内容渲染
                        Opacity(
                          opacity: notification.isRead ? 0.85 : 1.0,
                          child: MarkdownBody(
                            data: notification.message,
                            selectable: true,
                            styleSheet: MarkdownStyleSheet(
                              p: textTheme.bodyMedium?.copyWith(
                                color: notification.isRead
                                    ? colorScheme.onSurfaceVariant
                                    : colorScheme.onSurface,
                                height: 1.5,
                              ),
                              strong: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: colorScheme.primary,
                              ),
                              h3: textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (!notification.isRead)
              Positioned(
                top: -2.r,
                right: -2.r,
                child: Container(
                  width: 10.r,
                  height: 10.r,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.scaffoldBackgroundColor,
                      width: 2.r,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.primary.withValues(alpha: 0.3),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
          ],
        )
        .animate()
        .fadeIn(duration: AppDesignTokens.durationNormal)
        .slideY(begin: 0.05, end: 0);
  }
}

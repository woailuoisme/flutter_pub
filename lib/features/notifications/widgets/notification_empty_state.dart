import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 构建通知模块无数据状态界面
class NotificationEmptyState extends StatelessWidget {
  const NotificationEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    final colorScheme = theme.colorScheme;

    return Center(
      child:
          Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(AppDesignTokens.spacingL),
                    decoration: BoxDecoration(
                      color: colorScheme.primary.withValues(alpha: 0.05),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.notifications_none_rounded,
                      size: 64.sp,
                      color: colorScheme.primary.withValues(alpha: 0.3),
                    ),
                  ),
                  SizedBox(height: AppDesignTokens.spacingL),
                  Text(
                    t.notifications.empty,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: colorScheme.outline,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
              .animate()
              .fadeIn(duration: AppDesignTokens.durationNormal)
              .scale(
                begin: const Offset(0.95, 0.95),
                curve: Curves.easeOutBack,
              ),
    );
  }
}

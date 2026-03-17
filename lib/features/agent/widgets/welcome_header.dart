import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: EdgeInsets.fromLTRB(
        AppDesignTokens.spacingM,
        AppDesignTokens.spacingM,
        AppDesignTokens.spacingM,
        AppDesignTokens.spacingS,
      ),
      child: Row(
        children: [
          Container(
                padding: EdgeInsets.all(2.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.2),
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 24.r,
                  backgroundColor: colorScheme.primaryContainer,
                  child: Icon(
                    Symbols.person,
                    color: colorScheme.onPrimaryContainer,
                    size: 24.sp,
                    weight: 400,
                  ),
                ),
              )
              .animate()
              .fadeIn(duration: 600.ms)
              .scale(begin: const Offset(0.8, 0.8)),
          SizedBox(width: AppDesignTokens.spacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.common.welcomeBack,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Admin Agent', // TODO: Get from provider
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.8,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(Symbols.notifications),
                tooltip: t.common.notifications,
                style: IconButton.styleFrom(
                  backgroundColor: colorScheme.surfaceContainerHighest
                      .withValues(alpha: 0.5),
                ),
              ),
              Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: AppDesignTokens.error,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: colorScheme.surface,
                          width: 2,
                        ),
                      ),
                    ),
                  )
                  .animate(onPlay: (controller) => controller.repeat())
                  .scale(
                    duration: 1.seconds,
                    begin: const Offset(1, 1),
                    end: const Offset(1.2, 1.2),
                  )
                  .then()
                  .scale(
                    duration: 1.seconds,
                    begin: const Offset(1.2, 1.2),
                    end: const Offset(1, 1),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}

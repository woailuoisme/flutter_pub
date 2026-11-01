import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/core/widgets/button_widgets/premium_button.dart';

/// 个人中心红色渐变头部组件
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.username,
    this.avatarUrl,
    this.onLogout,
  });

  final String username;
  final String? avatarUrl;
  final VoidCallback? onLogout;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppDesignTokens.primaryGradient(context),
      ),
      child: Column(
        children: [
          SizedBox(height: 54.h),
          // Title Bar
          Text(
            t.profile.title,
            style: theme.textTheme.titleMedium?.copyWith(
              color: colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ).animate().fadeIn(duration: 400.ms),

          SizedBox(height: 32.h),

          // User Info Card
          PremiumCard(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.all(16.w),
            glass: true,
            enableAnimation:
                false, // Handle animation externally for the whole header if needed
            child: Row(
              children: [
                // Avatar with premium border
                Container(
                  width: 64.w,
                  height: 64.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: colorScheme.onPrimary.withValues(alpha: 0.4),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipOval(child: _buildAvatar(avatarUrl)),
                ),

                SizedBox(width: 16.w),

                // Name and Badge
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hi! $username',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.onPrimary.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(
                            AppDesignTokens.radiusFull,
                          ),
                        ),
                        child: Text(
                          'PRO MEMBER',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onPrimary,
                            fontWeight: FontWeight.w900,
                            fontSize: 9.sp,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Logout Button
                if (onLogout != null)
                  PremiumButton(
                    onPressed: onLogout,
                    text: t.common.logout,
                    variant: PremiumButtonVariant.outline,
                    color: colorScheme.error,
                    icon: Symbols.logout,
                    height: 34.h,
                  ),
              ],
            ),
          ).animate().fadeIn(duration: 500.ms, delay: 100.ms),

          SizedBox(height: 28.h),
        ],
      ),
    );
  }

  Widget _buildAvatar(String? url) {
    if (url == null || url.trim().isEmpty) {
      return const Center(
        child: Icon(Symbols.person, color: Colors.white, size: 32),
      );
    }

    return Image.network(
      url.trim(),
      fit: BoxFit.cover,
      errorBuilder: (_, _, _) => const Center(
        child: Icon(Symbols.person, color: Colors.white, size: 32),
      ),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
        );
      },
    );
  }
}

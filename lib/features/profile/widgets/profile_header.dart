import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppDesignTokens.primaryGradient(context),
        boxShadow: AppDesignTokens.shadowSoft(context),
      ),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          // Title Bar with animation
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  t.profile.title,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimary,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(duration: 400.ms),
          SizedBox(height: 30.h),
          // User Info Container with glass-like effect
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary.withValues(
                  alpha: AppDesignTokens.glassOpacity,
                ),
                borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
                border: Border.all(
                  color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 68.w,
                    height: 68.w,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                      border: Border.all(
                        color: theme.colorScheme.onPrimary.withValues(
                          alpha: 0.5,
                        ),
                        width: 2.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: _buildAvatar(avatarUrl),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi! $username',
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondaryContainer
                                .withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(
                              AppDesignTokens.radiusS,
                            ),
                          ),
                          child: Text(
                            'PRO MEMBER', // Example tag
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (onLogout != null)
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: onLogout,
                        borderRadius: BorderRadius.circular(
                          AppDesignTokens.radiusM,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 8.h,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.errorContainer.withValues(
                              alpha: 0.3,
                            ),
                            borderRadius: BorderRadius.circular(
                              AppDesignTokens.radiusM,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.onErrorContainer
                                  .withValues(alpha: 0.2),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Symbols.logout,
                                size: 16.sp,
                                color: theme.colorScheme.onPrimary,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                t.common.logout,
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ).animate().fadeIn(duration: 500.ms, delay: 100.ms),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildAvatar(String? url) {
    if (url == null || url.trim().isEmpty) {
      return const Center(child: Icon(Symbols.person, color: Colors.white));
    }

    final cleanUrl = url.trim();
    // 不再使用 SvgPicture 渲染 SVG，如果 URL 包含 .svg 也会尝试通过 Image.network 加载
    // 如果加载失败（由于格式不支持），会回退到 Symbols.person 图标
    return Image.network(
      cleanUrl,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) =>
          const Center(child: Icon(Symbols.person, color: Colors.white)),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
        );
      },
    );
  }
}

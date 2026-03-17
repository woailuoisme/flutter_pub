import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';
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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withValues(alpha: 0.8),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          // 标题栏
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
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          // 用户信息
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                Container(
                  width: 64.w,
                  height: 64.w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
                    border: Border.all(
                      color: theme.colorScheme.onPrimary.withValues(alpha: 0.5),
                      width: 2,
                    ),
                  ),
                  child: _buildAvatar(avatarUrl),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Text(
                    'Hi! $username',
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (onLogout != null)
                  InkWell(
                    onTap: onLogout,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 6.h,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withValues(
                          alpha: 0.2,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: theme.colorScheme.onPrimary.withValues(
                            alpha: 0.3,
                          ),
                        ),
                      ),
                      child: Text(
                        t.common.logout,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimary,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
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

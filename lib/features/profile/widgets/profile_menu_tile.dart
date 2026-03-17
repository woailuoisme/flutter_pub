import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_symbols_icons/symbols.dart';

/// 个人中心菜单列表项
class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailingText,
    this.trailingColor,
    this.titleColor,
    this.iconColor,
    this.onTap,
    this.showDivider = true,
  });

  final IconData icon;
  final String title;
  final String? trailingText;
  final Color? trailingColor;
  final Color? titleColor;
  final Color? iconColor;
  final VoidCallback? onTap;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          border: showDivider
              ? Border(
                  bottom: BorderSide(
                    color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                    width: 0.5,
                  ),
                )
              : null,
        ),
        child: Row(
          children: [
            Icon(icon, size: 22.sp, color: iconColor ?? colorScheme.primary),
            SizedBox(width: 14.w),
            Text(
              title,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontSize: 15.sp,
                color: titleColor ?? colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            if (trailingText != null)
              Text(
                trailingText!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: trailingColor ?? colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
            SizedBox(width: 4.w),
            Icon(
              Symbols.chevron_right,
              size: 20.sp,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}

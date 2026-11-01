import 'package:material_ui/material_ui.dart';
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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 60.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  // Styled Icon container
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: (iconColor ?? colorScheme.primary).withValues(
                        alpha: 0.1,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Icon(
                      icon,
                      size: 20.sp,
                      color: iconColor ?? colorScheme.primary,
                    ),
                  ),

                  SizedBox(width: 16.w),

                  Text(
                    title,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: titleColor ?? colorScheme.onSurface,
                    ),
                  ),

                  const Spacer(),

                  if (trailingText != null)
                    Text(
                      trailingText!,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: trailingColor ?? colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  SizedBox(width: 4.w),

                  Icon(
                    Symbols.chevron_right,
                    size: 20.sp,
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (showDivider)
          Padding(
            padding: EdgeInsets.only(left: 64.w, right: 16.w),
            child: Divider(
              height: 1,
              thickness: 0.8,
              color: colorScheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';

enum PremiumButtonVariant { primary, secondary, outline, ghost }

/// 尊享按钮组件 (Premium Button)
///
/// 支持触感反馈、多种变体和加载状态
class PremiumButton extends StatelessWidget {
  const PremiumButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.variant = PremiumButtonVariant.primary,
    this.isLoading = false,
    this.icon,
    this.width,
    this.height,
    this.color,
  });

  final VoidCallback? onPressed;
  final String text;
  final PremiumButtonVariant variant;
  final bool isLoading;
  final IconData? icon;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final colorScheme = theme.colorScheme;

    final Color baseColor = color ?? colorScheme.primary;
    final Color onBaseColor = color != null
        ? (ThemeData.estimateBrightnessForColor(baseColor) == Brightness.dark
              ? Colors.white
              : Colors.black)
        : colorScheme.onPrimary;

    Color backgroundColor;
    Color foregroundColor;
    BorderSide? borderSide;
    List<BoxShadow>? shadows;

    switch (variant) {
      case PremiumButtonVariant.primary:
        backgroundColor = baseColor;
        foregroundColor = onBaseColor;
        // 深色模式下主按钮添加更显著的发光感
        if (!isLoading && onPressed != null) {
          shadows = [
            BoxShadow(
              color: baseColor.withValues(alpha: isDark ? 0.3 : 0.2),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ];
        }
        break;
      case PremiumButtonVariant.secondary:
        backgroundColor = colorScheme.secondaryContainer;
        foregroundColor = colorScheme.onSecondaryContainer;
        break;
      case PremiumButtonVariant.outline:
        backgroundColor = Colors.transparent;
        foregroundColor = baseColor;
        borderSide = BorderSide(
          color: color != null
              ? color!.withValues(alpha: isDark ? 0.4 : 0.2)
              : colorScheme.outline.withValues(alpha: isDark ? 0.4 : 0.2),
          width: 1,
        );
        break;
      case PremiumButtonVariant.ghost:
        backgroundColor = Colors.transparent;
        foregroundColor = baseColor;
        break;
    }

    final bool isDisabled = onPressed == null || isLoading;

    return AnimatedContainer(
      duration: AppDesignTokens.durationFast,
      width: width,
      height: height ?? 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
        boxShadow: shadows,
      ),
      child: Material(
        color: isDisabled
            ? colorScheme.onSurface.withValues(alpha: 0.12)
            : backgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
          side: borderSide ?? BorderSide.none,
        ),
        child: InkWell(
          onTap: isDisabled
              ? null
              : () {
                  HapticFeedback.lightImpact();
                  onPressed?.call();
                },
          splashColor: foregroundColor.withValues(alpha: 0.1),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDesignTokens.spacingM),
            child: Center(
              child: isLoading
                  ? SizedBox(
                      height: 20.h,
                      width: 20.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: foregroundColor,
                      ),
                    )
                  : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (icon != null) ...[
                          Icon(
                            icon,
                            size: 18.sp,
                            color: isDisabled
                                ? colorScheme.onSurface.withValues(alpha: 0.38)
                                : foregroundColor,
                          ),
                          SizedBox(width: 8.w),
                        ],
                        Text(
                          text,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: isDisabled
                                ? colorScheme.onSurface.withValues(alpha: 0.38)
                                : foregroundColor,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

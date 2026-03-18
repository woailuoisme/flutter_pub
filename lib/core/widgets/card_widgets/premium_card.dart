import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';

/// 尊享卡片组件 (Premium Card)
///
/// 提供统一的圆角、阴影、玻璃拟态和入场动画支持
class PremiumCard extends StatelessWidget {
  const PremiumCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.onTap,
    this.color,
    this.borderRadius,
    this.hasShadow = true,
    this.animate = true,
    this.glass = false,
    this.borderColor,
  });
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final bool hasShadow;
  final bool animate;
  final bool glass;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final Widget cardBody = Container(
      padding: padding ?? EdgeInsets.all(AppDesignTokens.spacingM),
      decoration: BoxDecoration(
        color: glass
            ? (color ?? theme.colorScheme.surface).withValues(
                alpha: AppDesignTokens.glassOpacity,
              )
            : (color ?? theme.colorScheme.surface),
        borderRadius: BorderRadius.circular(
          borderRadius ?? AppDesignTokens.radiusL,
        ),
        boxShadow: (hasShadow && !glass)
            ? AppDesignTokens.shadowSoft(context)
            : null,
        border: Border.all(
          color:
              borderColor ??
              (glass
                  ? theme.colorScheme.onSurface.withValues(alpha: 0.1)
                  : theme.colorScheme.outlineVariant.withValues(alpha: 0.4)),
          width: 0.5,
        ),
      ),
      child: child,
    );

    Widget content = glass
        ? ClipRRect(
            borderRadius: BorderRadius.circular(
              borderRadius ?? AppDesignTokens.radiusL,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: AppDesignTokens.glassBlur,
                sigmaY: AppDesignTokens.glassBlur,
              ),
              child: cardBody,
            ),
          )
        : cardBody;

    if (onTap != null) {
      content = InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          borderRadius ?? AppDesignTokens.radiusL,
        ),
        child: content,
      );
    }

    if (margin != null) {
      content = Padding(padding: margin!, child: content);
    }

    if (animate) {
      return content
          .animate()
          .fadeIn(duration: AppDesignTokens.durationNormal)
          .scale(
            begin: const Offset(0.98, 0.98),
            end: const Offset(1, 1),
            curve: Curves.easeOutBack,
            duration: AppDesignTokens.durationNormal,
          )
          .slideY(begin: 0.05, end: 0, curve: Curves.easeOutCubic);
    }

    return content;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';

/// 尊享卡片组件 (Premium Card)
///
/// 提供统一的圆角、阴影和入场动画支持
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
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final Color? color;
  final double? borderRadius;
  final bool hasShadow;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget content = Container(
      padding: padding ?? EdgeInsets.all(AppDesignTokens.spacingM),
      decoration: BoxDecoration(
        color: color ?? theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(
          borderRadius ?? AppDesignTokens.radiusL,
        ),
        boxShadow: hasShadow ? AppDesignTokens.shadowSoft : null,
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
          width: 0.5,
        ),
      ),
      child: child,
    );

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
          .slideY(begin: 0.1, end: 0, curve: Curves.easeOutCubic);
    }

    return content;
  }
}

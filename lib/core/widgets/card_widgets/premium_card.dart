import 'dart:ui';
import 'package:material_ui/material_ui.dart';
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
    this.enableAnimation = true,
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
  final bool enableAnimation;
  final bool glass;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final radius = borderRadius ?? AppDesignTokens.radiusL;
    final bRadius = BorderRadius.circular(radius);

    // 1. 颜色与透明度优化 (适配深浅色)
    final baseSurface = color ?? theme.colorScheme.surface;

    // 深色模式下提升表面层级感，浅色模式下保持纯净
    final cardColor = glass
        ? baseSurface.withValues(alpha: isDark ? 0.15 : 0.08)
        : baseSurface;

    // 2. 边框优化 (深色模式需要更明显的边缘定义)
    final border = Border.all(
      color:
          borderColor ??
          (glass
              ? theme.colorScheme.onSurface.withValues(
                  alpha: isDark ? 0.15 : 0.1,
                )
              : theme.colorScheme.outlineVariant.withValues(
                  alpha: isDark ? 0.6 : 0.3,
                )),
      width: 0.5,
    );

    final shadow = (hasShadow && !glass)
        ? AppDesignTokens.shadowSoft(context)
        : null;

    // 3. 构建核心内容
    final Widget cardContent = Container(
      padding: padding ?? EdgeInsets.all(AppDesignTokens.spacingM),
      child: child,
    );

    // 4. 处理玻璃拟态
    final Widget mainBody = glass
        ? ClipRRect(
            borderRadius: bRadius,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: AppDesignTokens.glassBlur,
                sigmaY: AppDesignTokens.glassBlur,
              ),
              child: cardContent,
            ),
          )
        : cardContent;

    // 5. 组合装饰与点击水波纹
    final Widget result = Container(
      margin: margin,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: bRadius,
        boxShadow: shadow,
        border: border,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: bRadius,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          splashColor: theme.colorScheme.primary.withValues(
            alpha: isDark ? 0.1 : 0.05,
          ),
          highlightColor: theme.colorScheme.primary.withValues(alpha: 0.02),
          child: mainBody,
        ),
      ),
    );

    // 6. 动画
    if (enableAnimation) {
      return result
          .animate()
          .fadeIn(duration: AppDesignTokens.durationNormal)
          .scale(
            begin: const Offset(0.98, 0.98),
            end: const Offset(1, 1),
            curve: Curves.easeOutBack,
            duration: AppDesignTokens.durationNormal,
          );
    }

    return result;
  }
}

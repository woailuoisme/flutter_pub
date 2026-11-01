import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 预研设计令牌 (Design Tokens)
///
/// 用于统一全站的间距、圆角和阴影效果
class AppDesignTokens {
  // 间距 (Spacing) - 基于 4px 步进
  static final double spacingXS = 4.w;
  static final double spacingS = 8.w;
  static final double spacingM = 16.w;
  static final double spacingL = 24.w;
  static final double spacingXL = 32.w;
  static final double spacingXXL = 48.w;

  // 圆角 (Radius)
  static final double radiusS = 8.r;
  static final double radiusM = 12.r;
  static final double radiusL = 16.r;
  static final double radiusXL = 24.r;
  static const double radiusFull = 999;

  // 阴影 (Shadows) - 动态高度阴影
  static List<BoxShadow> shadowSoft(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return [
      BoxShadow(
        color: isDark
            ? Colors.black.withValues(alpha: 0.3)
            : Colors.black.withValues(alpha: 0.05),
        blurRadius: 10,
        offset: const Offset(0, 4),
      ),
    ];
  }

  static List<BoxShadow> shadowMedium(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return [
      BoxShadow(
        color: isDark
            ? Colors.black.withValues(alpha: 0.4)
            : Colors.black.withValues(alpha: 0.08),
        blurRadius: 20,
        offset: const Offset(0, 8),
      ),
    ];
  }

  // 玻璃拟态 (Glassmorphism)
  static const double glassOpacity = 0.1;
  static const double glassBlur = 12.0;

  // 渐变 (Gradients)
  static LinearGradient primaryGradient(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [colorScheme.primary, colorScheme.primary.withValues(alpha: 0.8)],
    );
  }

  static LinearGradient surfaceGradient(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: isDark
          ? [colorScheme.surfaceContainerHigh, colorScheme.surface]
          : [Colors.white, colorScheme.surfaceContainerLow],
    );
  }

  // 动画时长 (Durations)
  static const Duration durationFast = Duration(milliseconds: 200);
  static const Duration durationNormal = Duration(milliseconds: 350);
  static const Duration durationSlow = Duration(milliseconds: 500);

  // 布局限制
  static final double maxContentWidth = 600.w;

  // 状态颜色 (Status Colors)
  static const Color success = Color(0xFF10B981); // Emerald 500
  static const Color error = Color(0xFFEF4444); // Red 500
  static const Color warning = Color(0xFFF59E0B); // Amber 500
}

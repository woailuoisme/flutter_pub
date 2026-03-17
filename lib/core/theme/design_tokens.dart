import 'package:flutter/material.dart';
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

  // 阴影 (Shadows)
  static List<BoxShadow> shadowSoft = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.04),
      blurRadius: 10,
      offset: const Offset(0, 4),
    ),
  ];

  static List<BoxShadow> shadowMedium = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.08),
      blurRadius: 20,
      offset: const Offset(0, 8),
    ),
  ];

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

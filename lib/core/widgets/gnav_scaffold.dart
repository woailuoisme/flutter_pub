import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'package:lunchbox_hub/core/theme/design_tokens.dart';

/// 带底部导航栏的脚手架
///
/// 用于 StatefulShellRoute，提供底部导航栏和页面切换功能
class GNavScaffold extends StatelessWidget {
  const GNavScaffold({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: colorScheme.surface,
          boxShadow: AppDesignTokens.shadowSoft(context),
          border: Border(
            top: BorderSide(
              color: colorScheme.outlineVariant.withValues(alpha: 0.3),
              width: 0.5,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDesignTokens.spacingM,
              vertical: AppDesignTokens.spacingS,
            ),
            child: GNav(
              rippleColor: colorScheme.primary.withValues(alpha: 0.1),
              hoverColor: colorScheme.primary.withValues(alpha: 0.05),
              gap: 8.w,
              activeColor: colorScheme.primary,
              iconSize: 24.sp,
              padding: EdgeInsets.symmetric(
                horizontal: AppDesignTokens.spacingM,
                vertical: AppDesignTokens.spacingS,
              ),
              duration: AppDesignTokens.durationNormal,
              tabBackgroundColor: colorScheme.primaryContainer.withValues(
                alpha: 0.15,
              ),
              color: colorScheme.onSurface.withValues(
                alpha: 0.6,
              ), // 提高未选中图标的可见度
              textStyle: theme.textTheme.labelLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),
              tabs: [
                GButton(icon: Symbols.garage_home, text: t.navigation.machines),
                GButton(
                  icon: Symbols.inventory_2,
                  text: t.navigation.inventory,
                ),
                GButton(icon: Symbols.build, text: t.navigation.maintenance),
                GButton(
                  icon: Symbols.person_outline,
                  text: t.navigation.profile,
                ),
              ],
              selectedIndex: navigationShell.currentIndex,
              onTabChange: (int index) => _onTap(context, index),
            ),
          ),
        ),
      ),
    );
  }

  /// 处理底部导航栏点击事件
  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/env/app_env.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/settings/widgets/settings_sections.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:upgrader/upgrader.dart';

/// 设置页面
///
/// 提供主题、语言、应用信息及调试工具的配置与查看
class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UpgradeAlert(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: AppDesignTokens.surfaceGradient(context),
          ),
          child: const Column(
            children: [
              _SettingsAppBar(),
              Expanded(child: _SettingsList()),
            ],
          ),
        ),
      ),
    );
  }
}

/// 内部组件：设置页顶部导航栏
class _SettingsAppBar extends StatelessWidget {
  const _SettingsAppBar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Text(
        t.settings.title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

/// 内部组件：设置列表容器
class _SettingsList extends StatelessWidget {
  const _SettingsList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      children:
          [
                const GeneralSection(),
                SizedBox(height: 24.h),
                const AboutSection(),
                if (AppEnvConfig.current.debug) ...[
                  SizedBox(height: 24.h),
                  const DebugSection(),
                ],
                SizedBox(height: 52.h),
              ]
              .animate(interval: 50.ms)
              .fadeIn(duration: 400.ms)
              .slideY(begin: 0.1, end: 0, curve: Curves.easeOutQuad),
    );
  }
}

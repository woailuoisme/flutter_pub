import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/providers/locale_provider.dart';
import 'package:lunchbox_hub/core/theme/theme_provider.dart';
import 'package:lunchbox_hub/features/settings/extensions/settings_extension.dart';
import 'package:lunchbox_hub/features/settings/providers/settings_provider.dart';
import 'package:lunchbox_hub/features/settings/widgets/language_picker_sheet.dart';
import 'package:lunchbox_hub/features/settings/widgets/scheme_picker_sheet.dart';
import 'package:lunchbox_hub/features/settings/widgets/settings_item.dart';
import 'package:lunchbox_hub/features/settings/widgets/settings_section_card.dart';
import 'package:lunchbox_hub/features/settings/widgets/settings_section_header.dart';
import 'package:lunchbox_hub/features/settings/widgets/theme_picker_sheet.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// 通用设置部分组件
class GeneralSection extends ConsumerWidget {
  const GeneralSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    final currentLocale = ref.watch(localeProvider);
    final packageInfoAsync = ref.watch(fetchPackageInfoProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsSectionHeader(title: t.settings.general),
        SettingsSectionCard(
          children: [
            // 配色方案
            SettingsItem(
              icon: Symbols.colors,
              iconColor: colorScheme.primary,
              title: t.settings.themeScheme,
              trailing: _buildTrailingPreview(
                context,
                child: Container(
                  width: 16.w,
                  height: 16.w,
                  decoration: BoxDecoration(
                    color: themeState.scheme.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              onTap: () => SchemePickerSheet.show(context),
            ),
            // 主题模式
            SettingsItem(
              icon: Symbols.palette,
              iconColor: colorScheme.primary,
              title: t.settings.theme,
              trailing: _buildTrailingText(
                context,
                themeState.mode.displayName,
              ),
              onTap: () => ThemePickerSheet.show(context),
            ),
            // 语言设置
            SettingsItem(
              icon: Symbols.language,
              iconColor: colorScheme.primary,
              title: t.settings.language,
              trailing: _buildTrailingText(context, currentLocale.displayName),
              onTap: () => LanguagePickerSheet.show(context),
            ),
            // 检查更新
            SettingsItem(
              icon: Symbols.system_update,
              iconColor: colorScheme.primary,
              title: t.settings.checkUpdate,
              trailing: packageInfoAsync.when(
                data: (PackageInfo info) =>
                    _buildTrailingText(context, 'v${info.version}'),
                loading: () => SizedBox(
                  width: 14.w,
                  height: 14.w,
                  child: const CircularProgressIndicator(strokeWidth: 2),
                ),
                error: (error, _) => const Icon(Symbols.error, size: 14),
              ),
              onTap: () => _handleCheckUpdate(context),
            ),
            // 清理缓存
            SettingsItem(
              icon: Symbols.cleaning_services,
              iconColor: colorScheme.primary,
              title: t.settings.clearCache,
              showDivider: false,
              onTap: () => _handleClearCache(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTrailingText(BuildContext context, String text) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        SizedBox(width: 8.w),
        const Icon(Symbols.arrow_forward_ios, size: 14),
      ],
    );
  }

  Widget _buildTrailingPreview(BuildContext context, {required Widget child}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        SizedBox(width: 8.w),
        const Icon(Symbols.arrow_forward_ios, size: 14),
      ],
    );
  }

  void _handleCheckUpdate(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(t.settings.checkingUpdate),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _handleClearCache(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(t.settings.cacheCleared),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

/// 关于设置部分组件
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettingsSectionHeader(title: t.settings.about),
        SettingsSectionCard(
          children: [
            SettingsItem(
              icon: Symbols.perm_device_information,
              iconColor: colorScheme.primary,
              title: t.settings.deviceInfo,
              trailing: const Icon(Symbols.arrow_forward_ios, size: 14),
              onTap: () => const DeviceInfoRoute().push<void>(context),
            ),
            SettingsItem(
              icon: Symbols.info,
              iconColor: colorScheme.primary,
              title: t.settings.aboutUs,
              showDivider: false,
              trailing: const Icon(Symbols.arrow_forward_ios, size: 14),
              onTap: () => const AboutUsRoute().push<void>(context),
            ),
          ],
        ),
      ],
    );
  }
}

/// 调试工具部分组件
class DebugSection extends StatelessWidget {
  const DebugSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SettingsSectionHeader(title: 'Debug Tools'),
        SettingsSectionCard(
          children: [
            SettingsItem(
              icon: Symbols.bug_report,
              iconColor: colorScheme.error,
              title: 'Open Debugger',
              showDivider: false,
              trailing: const Icon(Symbols.arrow_forward_ios, size: 14),
              onTap: () => const DebugRoute().push<void>(context),
            ),
          ],
        ),
      ],
    );
  }
}

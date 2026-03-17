import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/theme_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

/// 主题模式选择底部弹窗
class ThemePickerSheet extends ConsumerWidget {
  const ThemePickerSheet({super.key});

  static Future<void> show(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => const ThemePickerSheet(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final themeState = ref.watch(themeProvider);
    final currentMode = themeState.mode;

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          Container(
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: colorScheme.outlineVariant,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          SizedBox(height: 16.h),
          _buildOption(
            context,
            ref,
            title: t.settings.themeSystem,
            icon: Symbols.brightness_auto,
            mode: ThemeMode.system,
            isSelected: currentMode == ThemeMode.system,
          ),
          _buildOption(
            context,
            ref,
            title: t.settings.themeLight,
            icon: Symbols.light_mode,
            mode: ThemeMode.light,
            isSelected: currentMode == ThemeMode.light,
          ),
          _buildOption(
            context,
            ref,
            title: t.settings.themeDark,
            icon: Symbols.dark_mode,
            mode: ThemeMode.dark,
            isSelected: currentMode == ThemeMode.dark,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _buildOption(
    BuildContext context,
    WidgetRef ref, {
    required String title,
    required IconData icon,
    required ThemeMode mode,
    required bool isSelected,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      leading: Icon(icon),
      trailing: isSelected
          ? Icon(Symbols.check, color: colorScheme.primary)
          : null,
      onTap: () async {
        await ref.read(themeProvider.notifier).setThemeMode(mode);
        if (context.mounted) {
          Navigator.pop(context);
        }
      },
    );
  }
}

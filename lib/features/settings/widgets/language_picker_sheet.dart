import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/providers/locale_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

/// 语言选择底部弹窗
class LanguagePickerSheet extends ConsumerWidget {
  const LanguagePickerSheet({super.key});

  static Future<void> show(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => const LanguagePickerSheet(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final currentLocale = ref.watch(localeProvider);

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
            leading: const Icon(Symbols.smartphone),
            locale: null,
            isSelected: currentLocale == null,
          ),
          _buildOption(
            context,
            ref,
            title: t.settings.english,
            leading: Text('🇺🇸', style: TextStyle(fontSize: 24.sp)),
            locale: AppLocale.en,
            isSelected: currentLocale == AppLocale.en,
          ),
          _buildOption(
            context,
            ref,
            title: t.settings.chinese,
            leading: Text('🇨🇳', style: TextStyle(fontSize: 24.sp)),
            locale: AppLocale.zhCn,
            isSelected: currentLocale == AppLocale.zhCn,
          ),
          _buildOption(
            context,
            ref,
            title: t.settings.traditionalChinese,
            leading: Text('🇭🇰', style: TextStyle(fontSize: 24.sp)),
            locale: AppLocale.zhTw,
            isSelected: currentLocale == AppLocale.zhTw,
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
    required Widget leading,
    required AppLocale? locale,
    required bool isSelected,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      leading: SizedBox(
        width: 24.w,
        child: Center(child: leading),
      ),
      trailing: isSelected
          ? Icon(Symbols.check, color: colorScheme.primary)
          : null,
      onTap: () async {
        await ref.read(localeProvider.notifier).setLocale(locale);
        if (context.mounted) {
          Navigator.pop(context);
        }
      },
    );
  }
}

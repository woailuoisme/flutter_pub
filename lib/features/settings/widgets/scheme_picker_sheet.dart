import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/theme_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

/// 配色方案选择底部弹窗
class SchemePickerSheet extends ConsumerWidget {
  const SchemePickerSheet({super.key});

  static Future<void> show(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) => const SchemePickerSheet(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final themeState = ref.watch(themeProvider);
    final currentScheme = themeState.scheme;

    const List<FlexScheme> schemes = [
      FlexScheme.shadOrange,
      FlexScheme.shadGreen,
      FlexScheme.bahamaBlue,
      FlexScheme.damask,
    ];

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
          ...schemes.map(
            (scheme) => _buildOption(
              context,
              ref,
              scheme: scheme,
              isSelected: currentScheme == scheme,
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _buildOption(
    BuildContext context,
    WidgetRef ref, {
    required FlexScheme scheme,
    required bool isSelected,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(
        _getSchemeName(scheme),
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      leading: Container(
        width: 24.w,
        height: 24.w,
        decoration: BoxDecoration(
          color: _getSchemeColor(scheme),
          shape: BoxShape.circle,
        ),
      ),
      trailing: isSelected
          ? Icon(Symbols.check, color: colorScheme.primary)
          : null,
      onTap: () async {
        await ref.read(themeProvider.notifier).setScheme(scheme);
        if (context.mounted) {
          Navigator.pop(context);
        }
      },
    );
  }

  Color _getSchemeColor(FlexScheme scheme) {
    if (scheme == FlexScheme.materialBaseline) {
      return Colors.deepPurple;
    }
    return FlexColor.schemes[scheme]?.light.primary ?? Colors.deepPurple;
  }

  String _getSchemeName(FlexScheme scheme) {
    switch (scheme) {
      case FlexScheme.shadOrange:
        return t.settings.schemes.shadOrange;
      case FlexScheme.shadGreen:
        return t.settings.schemes.shadGreen;
      case FlexScheme.bahamaBlue:
        return t.settings.schemes.bahamaBlue;
      case FlexScheme.damask:
        return t.settings.schemes.damask;
      default:
        return scheme.name;
    }
  }
}

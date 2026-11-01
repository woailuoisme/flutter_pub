import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:material_ui/material_ui.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

/// 设置相关的枚举扩展
///
/// 提供本地化文本转换和辅助属性，增强代码复用性
extension ThemeModeExtension on ThemeMode {
  /// 获取主题模式的显示名称
  String get displayName {
    switch (this) {
      case ThemeMode.light:
        return t.settings.themeLight;
      case ThemeMode.dark:
        return t.settings.themeDark;
      case ThemeMode.system:
        return t.settings.themeSystem;
    }
  }
}

extension AppLocaleExtension on AppLocale? {
  /// 获取语言名称
  String get displayName {
    if (this == null) return t.settings.themeSystem;
    switch (this!) {
      case AppLocale.en:
        return t.settings.english;
      case AppLocale.zhCn:
        return t.settings.chinese;
      case AppLocale.zhTw:
        return t.settings.traditionalChinese;
    }
  }
}

extension FlexSchemeExtension on FlexScheme {
  /// 获取配色的主要颜色预览
  Color get primaryColor {
    return FlexColor.schemes[this]?.light.primary ?? Colors.deepPurple;
  }
}

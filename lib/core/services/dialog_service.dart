import 'package:lunchbox_hub/core/providers/navigator_key_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_ui/material_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_service.g.dart';

/// 对话框服务
///
/// 提供信息、成功、错误、警告和确认五类对话框。
@riverpod
DialogService dialogService(Ref ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);
  return DialogService(navigatorKey: navigatorKey);
}

class DialogService {
  const DialogService({required this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  BuildContext? get _context => navigatorKey.currentContext;

  /// 显示提示对话框
  Future<void> showInfo({
    String? title,
    required String message,
    String? okText,
    VoidCallback? onOk,
    BuildContext? context,
  }) {
    return _show(
      context: context,
      icon: Icons.info_outline,
      title: title ?? t.common.info,
      message: message,
      okText: okText,
      onOk: onOk,
    );
  }

  /// 显示成功对话框
  Future<void> showSuccess({
    String? title,
    required String message,
    String? okText,
    VoidCallback? onOk,
    BuildContext? context,
  }) {
    return _show(
      context: context,
      icon: Icons.check_circle_outline,
      title: title ?? t.common.success,
      message: message,
      okText: okText,
      onOk: onOk,
    );
  }

  /// 显示错误对话框
  Future<void> showError({
    String? title,
    required String message,
    String? okText,
    VoidCallback? onOk,
    BuildContext? context,
  }) {
    return _show(
      context: context,
      icon: Icons.error_outline,
      title: title ?? t.common.error,
      message: message,
      okText: okText,
      onOk: onOk,
      isError: true,
    );
  }

  /// 显示警告对话框
  Future<void> showWarning({
    String? title,
    required String message,
    String? okText,
    VoidCallback? onOk,
    BuildContext? context,
  }) {
    return _show(
      context: context,
      icon: Icons.warning_amber_outlined,
      title: title ?? t.common.warning,
      message: message,
      okText: okText,
      onOk: onOk,
    );
  }

  /// 显示确认对话框，关闭返回 null
  Future<bool?> showConfirm({
    String? title,
    required String message,
    String? confirmText,
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    BuildContext? context,
  }) {
    final targetContext = context ?? _context;
    if (targetContext == null) return Future.value(null);

    final scheme = Theme.of(targetContext).colorScheme;
    return showDialog<bool>(
      context: targetContext,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(Icons.help_outline, color: scheme.primary),
        title: Text(title ?? t.common.confirm),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              onCancel?.call();
              Navigator.of(dialogContext).pop(false);
            },
            child: Text(cancelText ?? t.common.cancel),
          ),
          FilledButton(
            onPressed: () {
              onConfirm?.call();
              Navigator.of(dialogContext).pop(true);
            },
            child: Text(confirmText ?? t.common.confirm),
          ),
        ],
      ),
    );
  }

  Future<void> _show({
    required IconData icon,
    required String title,
    required String message,
    String? okText,
    VoidCallback? onOk,
    BuildContext? context,
    bool isError = false,
  }) {
    final targetContext = context ?? _context;
    if (targetContext == null) return Future.value();

    final scheme = Theme.of(targetContext).colorScheme;
    return showDialog<void>(
      context: targetContext,
      builder: (dialogContext) => AlertDialog(
        icon: Icon(icon, color: isError ? scheme.error : scheme.primary),
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              onOk?.call();
            },
            child: Text(okText ?? t.common.ok),
          ),
        ],
      ),
    );
  }
}

import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_update_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

import 'package:material_symbols_icons/symbols.dart';

class SlotQuantityEditDialog extends ConsumerStatefulWidget {
  const SlotQuantityEditDialog({super.key, required this.slot, this.onConfirm});

  final SlotModel slot;
  final void Function(int quantity)? onConfirm;

  @override
  ConsumerState<SlotQuantityEditDialog> createState() =>
      _SlotQuantityEditDialogState();
}

class _SlotQuantityEditDialogState
    extends ConsumerState<SlotQuantityEditDialog> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.slot.quantity.toString());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _confirm() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    final value = int.tryParse(text);
    if (value == null) return;

    // Ensure value is within [0, 5]
    final clampedValue = value.clamp(0, 5);

    if (widget.onConfirm != null) {
      widget.onConfirm!(clampedValue);
    } else {
      ref
          .read(slotUpdateProvider.notifier)
          .updateQuantity(
            machineId: widget.slot.machineId,
            slotId: widget.slot.id,
            quantity: clampedValue,
          );
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Watch controller for button state
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: _controller,
      builder: (context, value, child) {
        final currentVal = int.tryParse(value.text) ?? 0;

        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
          ),
          title: Text(
            widget.slot.productName,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${t.inventory.slotNumber}: ${widget.slot.slotNumber}',
                style: theme.textTheme.labelMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton.filledTonal(
                    onPressed: currentVal > 0
                        ? () {
                            _controller.text = (currentVal - 1).toString();
                            HapticFeedback.lightImpact();
                          }
                        : null,
                    style: IconButton.styleFrom(
                      backgroundColor: colorScheme.errorContainer.withValues(
                        alpha: 0.1,
                      ),
                      foregroundColor: colorScheme.error,
                    ),
                    icon: const Icon(Symbols.remove_rounded),
                  ),
                  SizedBox(width: 12.w),
                  SizedBox(
                    width: 80.w,
                    child: TextField(
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        TextInputFormatter.withFunction((oldValue, newValue) {
                          if (newValue.text.isEmpty) return newValue;
                          final n = int.tryParse(newValue.text);
                          if (n != null && n <= 5) return newValue;
                          return oldValue;
                        }),
                      ],
                      autofocus: true,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: colorScheme.primary,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  IconButton.filledTonal(
                    onPressed: currentVal < 5
                        ? () {
                            _controller.text = (currentVal + 1).toString();
                            HapticFeedback.lightImpact();
                          }
                        : null,
                    style: IconButton.styleFrom(
                      backgroundColor: colorScheme.primaryContainer.withValues(
                        alpha: 0.2,
                      ),
                      foregroundColor: colorScheme.primary,
                    ),
                    icon: const Icon(Symbols.add_rounded),
                  ),
                ],
              ),
              if (currentVal >= 5)
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    t.inventory.maxStockReached(max: '5'),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.primary.withValues(alpha: 0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          actionsPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
          actions: [
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppDesignTokens.radiusM,
                        ),
                      ),
                    ),
                    child: Text(t.common.cancel),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: FilledButton(
                    onPressed: _confirm,
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppDesignTokens.radiusM,
                        ),
                      ),
                    ),
                    child: Text(t.common.confirm),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

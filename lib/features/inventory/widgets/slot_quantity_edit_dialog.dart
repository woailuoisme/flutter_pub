import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_update_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

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
    final value = int.tryParse(_controller.text.trim());
    if (value == null) return;

    if (widget.onConfirm != null) {
      widget.onConfirm!(value);
    } else {
      // Fallback to direct provider update if no callback provided
      ref
          .read(slotUpdateProvider.notifier)
          .updateQuantity(
            machineId: widget.slot.machineId,
            slotId: widget.slot.id,
            quantity: value,
          );
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.slot.productName,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            '${t.inventory.slotNumber}: ${widget.slot.slotNumber}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
      content: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        autofocus: true,
        textAlign: TextAlign.center,
        style: theme.textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: colorScheme.primary,
        ),
        decoration: InputDecoration(
          labelText: t.inventory.quantity,
          hintText: '0',
          filled: true,
          fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDesignTokens.radiusM),
            borderSide: BorderSide.none,
          ),
          prefixIcon: IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () {
              final val = int.tryParse(_controller.text) ?? 0;
              if (val > 0) _controller.text = (val - 1).toString();
            },
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {
              final val = int.tryParse(_controller.text) ?? 0;
              _controller.text = (val + 1).toString();
            },
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(t.common.cancel),
        ),
        FilledButton(
          onPressed: _confirm,
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDesignTokens.radiusS),
            ),
          ),
          child: Text(t.common.confirm),
        ),
      ],
    );
  }
}

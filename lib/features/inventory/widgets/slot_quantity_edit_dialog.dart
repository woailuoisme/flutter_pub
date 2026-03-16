import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';
import 'package:lunchbox_hub/features/inventory/providers/slot_update_provider.dart';

class SlotQuantityEditDialog extends ConsumerStatefulWidget {
  const SlotQuantityEditDialog({super.key, required this.slot});

  final SlotModel slot;

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

    ref
        .read(slotUpdateProvider.notifier)
        .updateQuantity(
          machineId: widget.slot.machineId,
          slotId: widget.slot.id,
          quantity: value,
        );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${widget.slot.slotNumber} · ${widget.slot.productName}'),
      content: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        autofocus: true,
        decoration: const InputDecoration(
          labelText: '数量',
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('取消'),
        ),
        FilledButton(onPressed: _confirm, child: const Text('确认')),
      ],
    );
  }
}

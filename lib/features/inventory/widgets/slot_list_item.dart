import 'package:flutter/material.dart';
import 'package:lunchbox_hub/features/inventory/entities/slot_model.dart';

class SlotListItem extends StatelessWidget {
  const SlotListItem({super.key, required this.slot});

  final SlotModel slot;

  static const int _lowStockThreshold = 3;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final Color quantityColor;
    if (slot.quantity == 0) {
      quantityColor = colorScheme.error;
    } else if (slot.quantity <= _lowStockThreshold) {
      quantityColor = Colors.orange;
    } else {
      quantityColor = colorScheme.onSurface;
    }

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: colorScheme.primaryContainer,
        child: Text(
          slot.slotNumber,
          style: theme.textTheme.labelMedium?.copyWith(
            color: colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      title: Text(slot.productName),
      trailing: Text(
        '${slot.quantity}',
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: quantityColor,
        ),
      ),
    );
  }
}

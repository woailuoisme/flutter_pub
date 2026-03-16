import 'package:flutter/material.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class FaultStatusBadge extends StatelessWidget {
  const FaultStatusBadge({super.key, required this.status});

  final FaultStatus status;

  @override
  Widget build(BuildContext context) {
    final isPending = status == FaultStatus.pending;
    return Chip(
      label: Text(
        isPending ? t.maintenance.statusPending : t.maintenance.statusResolved,
      ),
      labelStyle: TextStyle(
        color: isPending ? Colors.orange.shade800 : Colors.green.shade800,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      backgroundColor: isPending ? Colors.orange.shade50 : Colors.green.shade50,
      side: BorderSide(
        color: isPending ? Colors.orange.shade200 : Colors.green.shade200,
      ),
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
    );
  }
}

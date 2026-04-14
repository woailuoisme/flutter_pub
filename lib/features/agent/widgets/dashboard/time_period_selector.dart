import 'package:flutter/material.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class TimePeriodSelector extends StatelessWidget {
  const TimePeriodSelector({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final TimePeriod selected;
  final ValueChanged<TimePeriod> onChanged;

  String _getLabel(TimePeriod period) {
    switch (period) {
      case TimePeriod.day:
        return t.machines.timePeriod.day;
      case TimePeriod.week:
        return t.machines.timePeriod.week;
      case TimePeriod.month:
        return t.machines.timePeriod.month;
      case TimePeriod.quarter:
        return t.machines.timePeriod.quarter;
      case TimePeriod.year:
        return t.machines.timePeriod.year;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: double.infinity,
        child: SegmentedButton<TimePeriod>(
          style: SegmentedButton.styleFrom(
            selectedBackgroundColor: Theme.of(context).colorScheme.primary,
            selectedForegroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
            side: BorderSide(
              color: Theme.of(
                context,
              ).colorScheme.outlineVariant.withValues(alpha: 0.5),
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          segments: TimePeriod.values
              .map(
                (p) => ButtonSegment<TimePeriod>(
                  value: p,
                  label: Text(_getLabel(p)),
                ),
              )
              .toList(),
          selected: {selected},
          onSelectionChanged: (set) => onChanged(set.first),
          showSelectedIcon: false,
        ),
      ),
    );
  }
}

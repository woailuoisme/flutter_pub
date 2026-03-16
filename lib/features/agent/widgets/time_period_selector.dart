import 'package:flutter/material.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';

class TimePeriodSelector extends StatelessWidget {
  const TimePeriodSelector({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final TimePeriod selected;
  final ValueChanged<TimePeriod> onChanged;

  static const _labels = {
    TimePeriod.day: '日',
    TimePeriod.week: '周',
    TimePeriod.month: '月',
    TimePeriod.quarter: '季度',
    TimePeriod.year: '年',
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SegmentedButton<TimePeriod>(
        segments: TimePeriod.values
            .map(
              (p) =>
                  ButtonSegment<TimePeriod>(value: p, label: Text(_labels[p]!)),
            )
            .toList(),
        selected: {selected},
        onSelectionChanged: (set) => onChanged(set.first),
        showSelectedIcon: false,
      ),
    );
  }
}

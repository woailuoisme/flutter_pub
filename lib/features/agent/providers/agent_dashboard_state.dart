import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunchbox_hub/features/agent/entities/revenue_stats_model.dart';

part 'agent_dashboard_state.freezed.dart';

@freezed
abstract class AgentDashboardState with _$AgentDashboardState {
  const factory AgentDashboardState({
    @Default(TimePeriod.month) TimePeriod selectedPeriod,
    AsyncValue<RevenueStatsModel>? stats,
  }) = _AgentDashboardState;
}

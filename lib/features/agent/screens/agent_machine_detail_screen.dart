import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_state.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_machine_detail_provider.dart';
import 'package:lunchbox_hub/features/agent/widgets/kpi_card.dart';
import 'package:lunchbox_hub/features/agent/widgets/order_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/product_pie_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/revenue_line_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/time_period_selector.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AgentMachineDetailScreen extends ConsumerStatefulWidget {
  const AgentMachineDetailScreen({super.key, required this.machineId});

  final String machineId;

  @override
  ConsumerState<AgentMachineDetailScreen> createState() =>
      _AgentMachineDetailScreenState();
}

class _AgentMachineDetailScreenState
    extends ConsumerState<AgentMachineDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref
          .read(agentMachineDetailProvider(widget.machineId).notifier)
          .loadStats(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final detailState = ref.watch(agentMachineDetailProvider(widget.machineId));
    final isLoading = detailState.stats is AsyncLoading;

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(t.machines.dashboard),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top + kToolbarHeight,
              ),
              TimePeriodSelector(
                selected: detailState.selectedPeriod,
                onChanged: (period) => ref
                    .read(agentMachineDetailProvider(widget.machineId).notifier)
                    .changePeriod(period),
              ),
              Skeletonizer(
                enabled: isLoading,
                child: _buildContent(
                  context,
                  detailState,
                ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.1, end: 0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AgentDashboardState detailState) {
    final stats = detailState.stats?.value;
    if (stats == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KpiCard(stats: stats),
        _SectionTitle(title: t.machines.revenueTrend),
        RevenueTrendLineChart(data: stats.revenueTrend),
        _SectionTitle(title: t.machines.orderVolume),
        OrderBarChart(data: stats.orderTrend),
        _SectionTitle(title: t.machines.productSalesRatio),
        ProductPieChart(data: stats.productSales),
        SizedBox(height: 24.h),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 4.h),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}

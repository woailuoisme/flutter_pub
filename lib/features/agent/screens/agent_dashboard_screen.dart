import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_provider.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_state.dart';
import 'package:lunchbox_hub/features/agent/widgets/kpi_card.dart';
import 'package:lunchbox_hub/features/agent/widgets/machine_comparison_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/order_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/product_pie_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/revenue_line_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/time_period_selector.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AgentDashboardScreen extends ConsumerStatefulWidget {
  const AgentDashboardScreen({super.key});

  @override
  ConsumerState<AgentDashboardScreen> createState() =>
      _AgentDashboardScreenState();
}

class _AgentDashboardScreenState extends ConsumerState<AgentDashboardScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(agentDashboardProvider.notifier).loadStats(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dashboardState = ref.watch(agentDashboardProvider);
    final statsAsync = dashboardState.stats;
    final isLoading = statsAsync is AsyncLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.machines.dashboard),
        actions: [
          IconButton(
            icon: const Icon(Icons.list_alt_rounded),
            tooltip: t.machines.machineList,
            onPressed: () => const AgentMachineListRoute().go(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimePeriodSelector(
              selected: dashboardState.selectedPeriod,
              onChanged: (period) => ref
                  .read(agentDashboardProvider.notifier)
                  .changePeriod(period),
            ),
            Skeletonizer(
              enabled: isLoading,
              child: _buildContent(context, dashboardState),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    AgentDashboardState dashboardState,
  ) {
    final stats = dashboardState.stats?.value;
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
        _SectionTitle(title: t.machines.machineRevenueComparison),
        MachineComparisonBarChart(
          data: stats.machineRevenues,
          onMachineTap: (id) =>
              AgentMachineDetailRoute(machineId: id).go(context),
        ),
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

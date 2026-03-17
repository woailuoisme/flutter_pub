import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_provider.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_state.dart';
import 'package:lunchbox_hub/features/agent/widgets/kpi_card.dart';
import 'package:lunchbox_hub/features/agent/widgets/machine_comparison_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/order_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/product_pie_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/revenue_line_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/time_period_selector.dart';
import 'package:lunchbox_hub/features/agent/widgets/welcome_header.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';

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
      () => ref.read(agentDashboardProvider.notifier).loadStats().then((_) {
        _showSuccessToast();
      }),
    );
  }

  void _showSuccessToast() {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.minimal,
      title: Text(t.common.success),
      description: Text('${t.machines.dashboard} ${t.common.refresh}'),
      autoCloseDuration: const Duration(seconds: 3),
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
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.list_alt_rounded),
            tooltip: t.machines.machineList,
            onPressed: () => const AgentMachineListRoute().go(context),
          ),
        ],
      ),
      body: Skeletonizer(
        enabled: isLoading,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeHeader(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDesignTokens.spacingM,
                ),
                child: TimePeriodSelector(
                  selected: dashboardState.selectedPeriod,
                  onChanged: (period) => ref
                      .read(agentDashboardProvider.notifier)
                      .changePeriod(period),
                ),
              ),
              _buildContent(context, dashboardState),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    AgentDashboardState dashboardState,
  ) {
    final stats = dashboardState.stats?.value;
    if (stats == null && dashboardState.stats is! AsyncLoading) {
      return const SizedBox.shrink();
    }

    // Dummy data for skeletonizer if stats is null
    final displayStats = stats ?? dashboardState.stats?.value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (displayStats != null) KpiCard(stats: displayStats),
        _SectionTitle(title: t.machines.revenueTrend),
        if (displayStats != null)
          RevenueTrendLineChart(data: displayStats.revenueTrend),
        _SectionTitle(title: t.machines.orderVolume),
        if (displayStats != null) OrderBarChart(data: displayStats.orderTrend),
        _SectionTitle(title: t.machines.productSalesRatio),
        if (displayStats != null)
          ProductPieChart(data: displayStats.productSales),
        _SectionTitle(title: t.machines.machineRevenueComparison),
        if (displayStats != null)
          MachineComparisonBarChart(
            data: displayStats.machineRevenues,
            onMachineTap: (id) =>
                AgentMachineDetailRoute(machineId: id).go(context),
          ),
        SizedBox(height: 32.h),
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
      padding: EdgeInsets.fromLTRB(
        AppDesignTokens.spacingM,
        AppDesignTokens.spacingL,
        AppDesignTokens.spacingM,
        AppDesignTokens.spacingXS,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w900,
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
          letterSpacing: 2.0,
        ),
      ),
    );
  }
}

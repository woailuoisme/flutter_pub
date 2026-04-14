import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_provider.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_state.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/kpi_card.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/machine_comparison_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/order_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/product_pie_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/revenue_line_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/time_period_selector.dart';
import 'package:lunchbox_hub/features/agent/widgets/dashboard/welcome_header.dart';
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
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const WelcomeHeader().animate().fadeIn(duration: 600.ms),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDesignTokens.spacingM,
                  vertical: AppDesignTokens.spacingS,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        t.machines.dashboard,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.list_alt_rounded),
                      tooltip: t.machines.machineList,
                      onPressed: () =>
                          const AgentMachineListRoute().push<void>(context),
                    ),
                  ],
                ),
              ).animate().fadeIn(delay: 200.ms),
              Expanded(
                child: Skeletonizer(
                  enabled: isLoading,
                  child: RefreshIndicator(
                    onRefresh: () =>
                        ref.read(agentDashboardProvider.notifier).loadStats(),
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                          ).animate().fadeIn(delay: 100.ms),
                          _buildContent(context, dashboardState),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
          RevenueTrendLineChart(data: displayStats.revenueTrend)
              .animate()
              .fadeIn(delay: 200.ms)
              .scale(begin: const Offset(0.95, 0.95)),
        _SectionTitle(title: t.machines.orderVolume),
        if (displayStats != null)
          OrderBarChart(data: displayStats.orderTrend)
              .animate()
              .fadeIn(delay: 300.ms)
              .scale(begin: const Offset(0.95, 0.95)),
        _SectionTitle(title: t.machines.productSalesRatio),
        if (displayStats != null)
          ProductPieChart(data: displayStats.productSales)
              .animate()
              .fadeIn(delay: 400.ms)
              .scale(begin: const Offset(0.95, 0.95)),
        _SectionTitle(title: t.machines.machineRevenueComparison),
        if (displayStats != null)
          MachineComparisonBarChart(
                data: displayStats.machineRevenues,
                onMachineTap: (id) =>
                    AgentMachineDetailRoute(machineId: id).go(context),
              )
              .animate()
              .fadeIn(delay: 500.ms)
              .scale(begin: const Offset(0.95, 0.95)),
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

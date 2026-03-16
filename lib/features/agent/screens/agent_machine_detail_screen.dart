import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_dashboard_state.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_machine_detail_provider.dart';
import 'package:lunchbox_hub/features/agent/widgets/kpi_card.dart';
import 'package:lunchbox_hub/features/agent/widgets/order_bar_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/product_pie_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/revenue_line_chart.dart';
import 'package:lunchbox_hub/features/agent/widgets/time_period_selector.dart';
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
      appBar: AppBar(title: const Text('机器详情')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimePeriodSelector(
              selected: detailState.selectedPeriod,
              onChanged: (period) => ref
                  .read(agentMachineDetailProvider(widget.machineId).notifier)
                  .changePeriod(period),
            ),
            Skeletonizer(
              enabled: isLoading,
              child: _buildContent(context, detailState),
            ),
          ],
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
        const _SectionTitle(title: '营收趋势'),
        RevenueTrendLineChart(data: stats.revenueTrend),
        const _SectionTitle(title: '订单量'),
        OrderBarChart(data: stats.orderTrend),
        const _SectionTitle(title: '商品销售占比'),
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

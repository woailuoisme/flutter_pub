import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_machine_list_provider.dart';
import 'package:lunchbox_hub/features/agent/widgets/machine_list/agent_machine_card.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AgentMachineListScreen extends ConsumerWidget {
  const AgentMachineListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final machinesAsync = ref.watch(agentMachineListProvider);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: machinesAsync.when(
          loading: () => _buildSkeleton(),
          error: (error, _) => _buildErrorState(context, ref),
          data: (machines) {
            if (machines.isEmpty) {
              return EmptyWidget(message: t.machines.emptyState);
            }
            return RefreshIndicator(
              onRefresh: () =>
                  ref.read(agentMachineListProvider.notifier).refresh(),
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    backgroundColor: theme.colorScheme.surface.withValues(
                      alpha: 0.7,
                    ),
                    title: Text(
                      t.machines.machineList,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: theme.colorScheme.onSurface,
                        letterSpacing: -0.2,
                      ),
                    ),
                    flexibleSpace: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                        child: Container(color: Colors.transparent),
                      ),
                    ),
                    centerTitle: true,
                    elevation: 0,
                    scrolledUnderElevation: 0,
                    leading: IconButton(
                      icon: const Icon(Symbols.arrow_back_ios_new),
                      onPressed: () => context.pop(),
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(
                      top: 12.h,
                      bottom: 40.h,
                      left: 0,
                      right: 0,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final machine = machines[index];
                        return AgentMachineCard(
                              machine: machine,
                              onHeaderTap: () => AgentMachineDetailRoute(
                                machineId: machine.id,
                              ).push<void>(context),
                              onStatsTap: () => AgentOrderListRoute(
                                machineId: machine.id,
                              ).push<void>(context),
                            )
                            .animate(delay: (50 * index).ms)
                            .fadeIn(duration: 400.ms);
                      }, childCount: machines.length),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(t.common.loadFailed, style: theme.textTheme.bodyLarge),
          SizedBox(height: 12.h),
          FilledButton.tonal(
            onPressed: () =>
                ref.read(agentMachineListProvider.notifier).refresh(),
            child: Text(t.common.retry),
          ),
        ],
      ),
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        itemCount: 6,
        itemBuilder: (context, index) => Card(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 160.w, height: 18.h, color: Colors.grey),
                SizedBox(height: 8.h),
                Container(width: 240.w, height: 14.h, color: Colors.grey),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Container(width: 80.w, height: 14.h, color: Colors.grey),
                    SizedBox(width: 24.w),
                    Container(width: 80.w, height: 14.h, color: Colors.grey),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

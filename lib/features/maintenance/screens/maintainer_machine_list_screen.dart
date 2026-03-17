import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/agent/widgets/welcome_header.dart';
import 'package:lunchbox_hub/features/maintenance/providers/maintainer_machine_list_provider.dart';
import 'package:lunchbox_hub/features/maintenance/widgets/maintainer_machine_card.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MaintainerMachineListScreen extends ConsumerWidget {
  const MaintainerMachineListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final machinesAsync = ref.watch(maintainerMachineListProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const WelcomeHeader()
                  .animate()
                  .fadeIn(duration: 400.ms)
                  .slideY(begin: -0.2, curve: Curves.easeOutQuad),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDesignTokens.spacingM,
                  vertical: AppDesignTokens.spacingS,
                ),
                child: Row(
                  children: [
                    Text(
                      t.maintenance.machineList,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ],
                ).animate().fadeIn(delay: 100.ms).slideX(begin: -0.1),
              ),
              Expanded(
                child: machinesAsync.when(
                  loading: () => _buildSkeleton(),
                  error: (error, _) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          t.common.loadFailed,
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 12.h),
                        FilledButton.tonal(
                          onPressed: () => ref
                              .read(maintainerMachineListProvider.notifier)
                              .refresh(),
                          child: Text(t.common.retry),
                        ),
                      ],
                    ),
                  ),
                  data: (machines) {
                    if (machines.isEmpty) {
                      return EmptyWidget(message: t.maintenance.emptyState);
                    }
                    return RefreshIndicator(
                      onRefresh: () => ref
                          .read(maintainerMachineListProvider.notifier)
                          .refresh(),
                      child: ListView.builder(
                        padding: EdgeInsets.only(
                          bottom: AppDesignTokens.spacingL,
                        ),
                        itemCount: machines.length,
                        itemBuilder: (context, index) {
                          final machine = machines[index];
                          return MaintainerMachineCard(
                                machine: machine,
                                onTap: () => MaintainerFaultListRoute(
                                  machineId: machine.id,
                                ).go(context),
                              )
                              .animate()
                              .fadeIn(
                                delay: (100 + (index * 50)).ms,
                                duration: 400.ms,
                              )
                              .slideY(begin: 0.1, curve: Curves.easeOutQuad);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) => PremiumCard(
          margin: EdgeInsets.symmetric(
            horizontal: AppDesignTokens.spacingM,
            vertical: AppDesignTokens.spacingS,
          ),
          padding: EdgeInsets.all(AppDesignTokens.spacingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 160.w, height: 20.h, color: Colors.grey),
              SizedBox(height: 8.h),
              Container(width: 240.w, height: 12.h, color: Colors.grey),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(height: 14.h, color: Colors.grey),
                  ),
                  SizedBox(width: AppDesignTokens.spacingM),
                  Expanded(
                    child: Container(height: 14.h, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

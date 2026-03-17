import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/card_widgets/premium_card.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/agent/widgets/welcome_header.dart';
import 'package:lunchbox_hub/features/inventory/providers/stocker_machine_list_provider.dart';
import 'package:lunchbox_hub/features/inventory/widgets/stocker_machine_card.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:skeletonizer/skeletonizer.dart';

class StockerMachineListScreen extends ConsumerWidget {
  const StockerMachineListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final machinesAsync = ref.watch(stockerMachineListProvider);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            const WelcomeHeader(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDesignTokens.spacingM,
                vertical: AppDesignTokens.spacingS,
              ),
              child: Row(
                children: [
                  Text(
                    t.inventory.machineList,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
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
                            .read(stockerMachineListProvider.notifier)
                            .refresh(),
                        child: Text(t.common.retry),
                      ),
                    ],
                  ),
                ),
                data: (machines) {
                  if (machines.isEmpty) {
                    return EmptyWidget(message: t.inventory.emptyState);
                  }
                  return RefreshIndicator(
                    onRefresh: () =>
                        ref.read(stockerMachineListProvider.notifier).refresh(),
                    child: ListView.builder(
                      padding: EdgeInsets.only(
                        bottom: AppDesignTokens.spacingL,
                      ),
                      itemCount: machines.length,
                      itemBuilder: (context, index) {
                        final machine = machines[index];
                        return StockerMachineCard(
                          machine: machine,
                          onTap: () => StockerSlotListRoute(
                            machineId: machine.id,
                          ).go(context),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
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
              Container(width: 140.w, height: 18.h, color: Colors.grey),
              SizedBox(height: 8.h),
              Container(width: 200.w, height: 12.h, color: Colors.grey),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 60.w, height: 30.h, color: Colors.grey),
                  Container(width: 60.w, height: 30.h, color: Colors.grey),
                  Container(width: 60.w, height: 30.h, color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

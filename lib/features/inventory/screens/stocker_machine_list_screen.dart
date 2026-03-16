import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/inventory/providers/stocker_machine_list_provider.dart';
import 'package:lunchbox_hub/features/inventory/widgets/stocker_machine_card.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:lunchbox_hub/routes/routes.dart';
import 'package:skeletonizer/skeletonizer.dart';

class StockerMachineListScreen extends ConsumerWidget {
  const StockerMachineListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final machinesAsync = ref.watch(stockerMachineListProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.inventory.machineList)),
      body: machinesAsync.when(
        loading: () => _buildSkeleton(),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.common.loadFailed,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 12.h),
              FilledButton.tonal(
                onPressed: () =>
                    ref.read(stockerMachineListProvider.notifier).refresh(),
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
              padding: EdgeInsets.symmetric(vertical: 8.h),
              itemCount: machines.length,
              itemBuilder: (context, index) {
                final machine = machines[index];
                return StockerMachineCard(
                  machine: machine,
                  onTap: () =>
                      StockerSlotListRoute(machineId: machine.id).go(context),
                );
              },
            ),
          );
        },
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
                    Container(width: 60.w, height: 14.h, color: Colors.grey),
                    SizedBox(width: 20.w),
                    Container(width: 60.w, height: 14.h, color: Colors.grey),
                    SizedBox(width: 20.w),
                    Container(width: 60.w, height: 14.h, color: Colors.grey),
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

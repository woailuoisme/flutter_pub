import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/features/agent/entities/order_model.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_machine_list_provider.dart';
import 'package:lunchbox_hub/features/agent/repositories/agent_repository.dart';
import 'package:lunchbox_hub/features/agent/widgets/order_list_item.dart';
import 'package:lunchbox_hub/features/agent/widgets/revenue_summary_card.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class AgentOrderListScreen extends ConsumerStatefulWidget {
  const AgentOrderListScreen({super.key, required this.machineId});

  final String machineId;

  @override
  ConsumerState<AgentOrderListScreen> createState() =>
      _AgentOrderListScreenState();
}

class _AgentOrderListScreenState extends ConsumerState<AgentOrderListScreen> {
  static const _pageSize = 20;

  late final _pagingController = PagingController<int, OrderModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => ref
        .read(agentRepositoryProvider)
        .getMachineOrders(
          machineId: widget.machineId,
          page: pageKey,
          perPage: _pageSize,
        ),
  );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  String _getTotalRevenue() {
    final machinesAsync = ref.read(agentMachineListProvider);
    return machinesAsync.whenOrNull(
          data: (List<AgentMachineModel> machines) {
            try {
              return machines
                  .firstWhere((m) => m.id == widget.machineId)
                  .totalRevenue;
            } catch (_) {
              return null;
            }
          },
        ) ??
        '0.00';
  }

  @override
  Widget build(BuildContext context) {
    final totalRevenue = _getTotalRevenue();

    return Scaffold(
      appBar: AppBar(title: Text(t.machines.orderList)),
      body: Column(
        children: [
          RevenueSummaryCard(totalRevenue: totalRevenue),
          Expanded(
            child: PagingListener(
              controller: _pagingController,
              builder: (context, state, fetchNextPage) =>
                  PagedListView<int, OrderModel>(
                    state: state,
                    fetchNextPage: fetchNextPage,
                    builderDelegate: PagedChildBuilderDelegate<OrderModel>(
                      itemBuilder: (context, order, index) =>
                          OrderListItem(order: order),
                      noItemsFoundIndicatorBuilder: (_) => Center(
                        child: Padding(
                          padding: EdgeInsets.all(32.w),
                          child: Text(
                            t.machines.emptyOrders,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

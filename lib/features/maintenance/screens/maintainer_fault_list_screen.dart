import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/repositories/maintenance_repository.dart';
import 'package:lunchbox_hub/features/maintenance/widgets/fault_record_list_item.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';

class MaintainerFaultListScreen extends ConsumerStatefulWidget {
  const MaintainerFaultListScreen({super.key, required this.machineId});

  final String machineId;

  @override
  ConsumerState<MaintainerFaultListScreen> createState() =>
      _MaintainerFaultListScreenState();
}

class _MaintainerFaultListScreenState
    extends ConsumerState<MaintainerFaultListScreen> {
  static const _pageSize = 20;

  late final _pagingController = PagingController<int, FaultRecordModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => ref
        .read(maintenanceRepositoryProvider)
        .getMachineFaults(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.maintenance.faultList)),
      body: PagingListener(
        controller: _pagingController,
        builder: (context, state, fetchNextPage) =>
            PagedListView<int, FaultRecordModel>(
              state: state,
              fetchNextPage: fetchNextPage,
              builderDelegate: PagedChildBuilderDelegate<FaultRecordModel>(
                itemBuilder: (context, fault, index) =>
                    FaultRecordListItem(fault: fault),
                noItemsFoundIndicatorBuilder: (_) =>
                    EmptyWidget(message: t.maintenance.noFaultRecords),
                newPageErrorIndicatorBuilder: (_) => Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: Text(
                      t.maintenance.loadFailed,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}

import 'package:material_ui/material_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/empty_widget.dart';
import 'package:lunchbox_hub/features/maintenance/entities/fault_record_model.dart';
import 'package:lunchbox_hub/features/maintenance/repositories/maintenance_repository.dart';
import 'package:lunchbox_hub/features/maintenance/widgets/fault_record_list_item.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(t.maintenance.faultList),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: SafeArea(
          child: PagingListener(
            controller: _pagingController,
            builder: (context, state, fetchNextPage) =>
                PagedListView<int, FaultRecordModel>(
                  state: state,
                  fetchNextPage: fetchNextPage,
                  padding: EdgeInsets.symmetric(
                    vertical: AppDesignTokens.spacingS,
                  ),
                  builderDelegate: PagedChildBuilderDelegate<FaultRecordModel>(
                    itemBuilder: (context, fault, index) =>
                        FaultRecordListItem(fault: fault)
                            .animate()
                            .fadeIn(
                              delay: (100 + (index % 10 * 50)).ms,
                              duration: 400.ms,
                            )
                            .slideY(begin: 0.1, curve: Curves.easeOutQuad),
                    noItemsFoundIndicatorBuilder: (_) =>
                        EmptyWidget(message: t.maintenance.noFaultRecords),
                    firstPageProgressIndicatorBuilder: (_) => _buildSkeleton(),
                    newPageErrorIndicatorBuilder: (_) => Center(
                      child: Padding(
                        padding: EdgeInsets.all(AppDesignTokens.spacingM),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              t.maintenance.loadFailed,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            FilledButton.tonal(
                              onPressed: () => fetchNextPage(),
                              child: Text(t.common.retry),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      child: Column(
        children: List.generate(
          8,
          (index) => FaultRecordListItem(
            fault: FaultRecordModel(
              id: 'skeleton-$index',
              machineId: '',
              faultType: 'Fault Type Name',
              description: 'This is a description of the fault record.',
              status: FaultStatus.pending,
              occurredAt: '2024-03-24 10:00:00',
            ),
          ),
        ),
      ),
    );
  }
}

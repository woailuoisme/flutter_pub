import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox_hub/core/theme/design_tokens.dart';
import 'package:lunchbox_hub/core/widgets/app_image.dart';

import 'package:lunchbox_hub/features/agent/entities/agent_machine_model.dart';
import 'package:lunchbox_hub/features/agent/providers/agent_machine_list_provider.dart';
import 'package:lunchbox_hub/i18n/translations.g.dart';
import 'package:material_symbols_icons/symbols.dart';

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
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final machine = ref
        .watch(agentMachineListProvider)
        .whenOrNull(
          data: (List<AgentMachineModel> list) {
            try {
              return list.firstWhere((m) => m.id == widget.machineId);
            } catch (_) {
              return null;
            }
          },
        );

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppDesignTokens.surfaceGradient(context),
        ),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              backgroundColor: colorScheme.surface.withValues(alpha: 0.7),
              title: Text(
                machine?.name ?? t.machines.dashboard,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: colorScheme.onSurface,
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
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  // 设备图片展示
                  if (machine?.imageUrl != null)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child:
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppDesignTokens.radiusL,
                            ),
                            child: Stack(
                              children: [
                                AppImage(
                                  imageUrl: machine!.imageUrl!,
                                  width: double.infinity,
                                  height: 180.h,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withValues(alpha: 0.6),
                                        ],
                                      ),
                                    ),
                                    padding: EdgeInsets.all(12.w),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Symbols.circle,
                                          size: 10.sp,
                                          color: machine.status == '正常运行'
                                              ? Colors.greenAccent
                                              : Colors.orangeAccent,
                                          fill: 1.0,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          machine.status ?? '未知状态',
                                          style: theme.textTheme.labelMedium
                                              ?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ).animate().scale(
                            begin: const Offset(0.95, 0.95),
                            end: const Offset(1, 1),
                            duration: 600.ms,
                          ),
                    ),

                  // 设备核心详情卡片
                  if (machine != null) _buildDetailGrid(context, machine),

                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailGrid(BuildContext context, AgentMachineModel machine) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      margin: EdgeInsets.all(AppDesignTokens.spacingM),
      padding: EdgeInsets.all(AppDesignTokens.spacingM),
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(AppDesignTokens.radiusL),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _DetailRow(
            icon: Symbols.qr_code_2,
            label: '序列号',
            value: machine.sn ?? '-',
          ),
          Divider(height: 24.h, thickness: 0.5),
          _DetailRow(
            icon: Symbols.location_on,
            label: '地址',
            value: machine.location,
          ),
          Divider(height: 24.h, thickness: 0.5),
          Row(
            children: [
              Expanded(
                child: _DetailRow(
                  icon: Symbols.explore,
                  label: '经度',
                  value: machine.longitude?.toStringAsFixed(6) ?? '-',
                ),
              ),
              Expanded(
                child: _DetailRow(
                  icon: Symbols.explore,
                  label: '纬度',
                  value: machine.latitude?.toStringAsFixed(6) ?? '-',
                ),
              ),
            ],
          ),
          if (machine.description != null) ...[
            Divider(height: 24.h, thickness: 0.5),
            _DetailRow(
              icon: Symbols.description,
              label: '描述',
              value: machine.description!,
            ),
          ],
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 18.sp,
          color: colorScheme.primary.withValues(alpha: 0.8),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

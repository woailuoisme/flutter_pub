import 'dart:async';

import 'package:lunchbox_hub/features/maintenance/entities/maintainer_machine_model.dart';
import 'package:lunchbox_hub/features/maintenance/repositories/maintenance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'maintainer_machine_list_provider.g.dart';

@riverpod
class MaintainerMachineListNotifier extends _$MaintainerMachineListNotifier {
  @override
  FutureOr<List<MaintainerMachineModel>> build() async {
    return ref.read(maintenanceRepositoryProvider).getMaintainerMachines();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(maintenanceRepositoryProvider).getMaintainerMachines(),
    );
  }
}

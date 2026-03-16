import 'dart:async';

import 'package:lunchbox_hub/features/inventory/entities/stocker_machine_model.dart';
import 'package:lunchbox_hub/features/inventory/repositories/inventory_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stocker_machine_list_provider.g.dart';

@riverpod
class StockerMachineListNotifier extends _$StockerMachineListNotifier {
  @override
  FutureOr<List<StockerMachineModel>> build() async {
    return ref.read(inventoryRepositoryProvider).getStockerMachines();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(inventoryRepositoryProvider).getStockerMachines(),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintainer_machine_model.freezed.dart';
part 'maintainer_machine_model.g.dart';

@freezed
sealed class MaintainerMachineModel with _$MaintainerMachineModel {
  const factory MaintainerMachineModel({
    required String id,
    required String name,
    required String location,
    @JsonKey(name: 'fault_count') @Default(0) int faultCount,
    @JsonKey(name: 'last_fault_at') String? lastFaultAt,
  }) = _MaintainerMachineModel;

  factory MaintainerMachineModel.fromJson(Map<String, dynamic> json) =>
      _$MaintainerMachineModelFromJson(json);
}

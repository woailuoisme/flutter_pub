import 'package:freezed_annotation/freezed_annotation.dart';

part 'fault_record_model.freezed.dart';
part 'fault_record_model.g.dart';

enum FaultStatus { pending, resolved }

@freezed
sealed class FaultRecordModel with _$FaultRecordModel {
  const factory FaultRecordModel({
    required String id,
    @JsonKey(name: 'machine_id') required String machineId,
    @JsonKey(name: 'fault_type') required String faultType,
    required String description,
    @Default(FaultStatus.pending) FaultStatus status,
    @JsonKey(name: 'occurred_at') required String occurredAt,
  }) = _FaultRecordModel;

  factory FaultRecordModel.fromJson(Map<String, dynamic> json) =>
      _$FaultRecordModelFromJson(json);
}

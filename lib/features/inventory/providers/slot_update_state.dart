import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_update_state.freezed.dart';

enum SlotUpdateStatus { initial, inProgress, success, failure }

@freezed
abstract class SlotUpdateState with _$SlotUpdateState {
  const factory SlotUpdateState({
    @Default(SlotUpdateStatus.initial) SlotUpdateStatus status,
    String? errorMessage,
  }) = _SlotUpdateState;
}

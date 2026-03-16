// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slot_update_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SlotUpdateNotifier)
final slotUpdateProvider = SlotUpdateNotifierProvider._();

final class SlotUpdateNotifierProvider
    extends $NotifierProvider<SlotUpdateNotifier, SlotUpdateState> {
  SlotUpdateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'slotUpdateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$slotUpdateNotifierHash();

  @$internal
  @override
  SlotUpdateNotifier create() => SlotUpdateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SlotUpdateState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SlotUpdateState>(value),
    );
  }
}

String _$slotUpdateNotifierHash() =>
    r'6c1895bc7663d8a0a5137f4d01b7e396e50c1f48';

abstract class _$SlotUpdateNotifier extends $Notifier<SlotUpdateState> {
  SlotUpdateState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SlotUpdateState, SlotUpdateState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SlotUpdateState, SlotUpdateState>,
              SlotUpdateState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_order_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgentOrderListNotifier)
final agentOrderListProvider = AgentOrderListNotifierFamily._();

final class AgentOrderListNotifierProvider
    extends $AsyncNotifierProvider<AgentOrderListNotifier, List<OrderModel>> {
  AgentOrderListNotifierProvider._({
    required AgentOrderListNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'agentOrderListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$agentOrderListNotifierHash();

  @override
  String toString() {
    return r'agentOrderListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AgentOrderListNotifier create() => AgentOrderListNotifier();

  @override
  bool operator ==(Object other) {
    return other is AgentOrderListNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$agentOrderListNotifierHash() =>
    r'c41004d242bda1f2f8f515b4a718b7e27a723f7d';

final class AgentOrderListNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AgentOrderListNotifier,
          AsyncValue<List<OrderModel>>,
          List<OrderModel>,
          FutureOr<List<OrderModel>>,
          String
        > {
  AgentOrderListNotifierFamily._()
    : super(
        retry: null,
        name: r'agentOrderListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AgentOrderListNotifierProvider call(String machineId) =>
      AgentOrderListNotifierProvider._(argument: machineId, from: this);

  @override
  String toString() => r'agentOrderListProvider';
}

abstract class _$AgentOrderListNotifier
    extends $AsyncNotifier<List<OrderModel>> {
  late final _$args = ref.$arg as String;
  String get machineId => _$args;

  FutureOr<List<OrderModel>> build(String machineId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<OrderModel>>, List<OrderModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<OrderModel>>, List<OrderModel>>,
              AsyncValue<List<OrderModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gotify_websocket_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gotifyWebSocketService)
final gotifyWebSocketServiceProvider = GotifyWebSocketServiceProvider._();

final class GotifyWebSocketServiceProvider
    extends
        $FunctionalProvider<
          GotifyWebSocketService,
          GotifyWebSocketService,
          GotifyWebSocketService
        >
    with $Provider<GotifyWebSocketService> {
  GotifyWebSocketServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gotifyWebSocketServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gotifyWebSocketServiceHash();

  @$internal
  @override
  $ProviderElement<GotifyWebSocketService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GotifyWebSocketService create(Ref ref) {
    return gotifyWebSocketService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GotifyWebSocketService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GotifyWebSocketService>(value),
    );
  }
}

String _$gotifyWebSocketServiceHash() =>
    r'3701e154b4b75bd4ae833f7d3fd594f7481602d5';

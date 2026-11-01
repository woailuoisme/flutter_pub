// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gotify_rest_client.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: type=lint
// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _GotifyRestClient implements GotifyRestClient {
  _GotifyRestClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<List<NotificationModel>> getMessages({int? limit, int? since}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit, r'since': since};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<NotificationModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/message',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<NotificationModel> _value;
    try {
      _value = _result.data!
          .map(
            (dynamic i) =>
                NotificationModel.fromJson(i as Map<String, dynamic>),
          )
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gotifyRestClient)
final gotifyRestClientProvider = GotifyRestClientProvider._();

final class GotifyRestClientProvider
    extends
        $FunctionalProvider<
          GotifyRestClient,
          GotifyRestClient,
          GotifyRestClient
        >
    with $Provider<GotifyRestClient> {
  GotifyRestClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gotifyRestClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gotifyRestClientHash();

  @$internal
  @override
  $ProviderElement<GotifyRestClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GotifyRestClient create(Ref ref) {
    return gotifyRestClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GotifyRestClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GotifyRestClient>(value),
    );
  }
}

String _$gotifyRestClientHash() => r'571b86087f1120ac020e3d7dbe25e66849134951';

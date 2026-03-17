import 'dart:async';
import 'dart:convert';
import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'gotify_websocket_service.g.dart';

class GotifyWebSocketService {
  WebSocketChannel? _channel;
  final _controller = StreamController<NotificationModel>.broadcast();

  Stream<NotificationModel> get stream => _controller.stream;

  void connect() {
    if (_channel != null) return;

    final baseUrl = AppConstants.gotifyBaseUrl;
    final wsUrl = baseUrl.replaceFirst('http', 'ws');
    final url = '$wsUrl/stream?token=${AppConstants.gotifyClientToken}';

    _channel = WebSocketChannel.connect(Uri.parse(url));
    _channel?.stream.listen(
      (data) {
        try {
          final json = jsonDecode(data as String);
          final message = NotificationModel.fromJson(
            json as Map<String, dynamic>,
          );
          _controller.add(message);
        } catch (e) {
          // Log error
        }
      },
      onError: (error) {
        _reconnect();
      },
      onDone: () {
        _reconnect();
      },
    );
  }

  void _reconnect() {
    _channel = null;
    Future.delayed(const Duration(seconds: 5), connect);
  }

  void dispose() {
    _channel?.sink.close();
    _controller.close();
  }
}

@riverpod
GotifyWebSocketService gotifyWebSocketService(Ref ref) {
  final service = GotifyWebSocketService();
  ref.onDispose(service.dispose);
  return service;
}

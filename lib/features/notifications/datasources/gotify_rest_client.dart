import 'package:dio/dio.dart';
import 'package:lunchbox_hub/core/constants/app_constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:lunchbox_hub/features/notifications/entities/notification_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gotify_rest_client.g.dart';

@Riverpod(keepAlive: true)
GotifyRestClient gotifyRestClient(Ref ref) {
  final gotifyDio = Dio(
    BaseOptions(
      baseUrl: AppConstants.gotifyBaseUrl,
      headers: {'X-Gotify-Key': AppConstants.gotifyClientToken},
    ),
  );

  return GotifyRestClient(gotifyDio);
}

@RestApi()
abstract class GotifyRestClient {
  factory GotifyRestClient(Dio dio, {String baseUrl}) = _GotifyRestClient;

  @GET('/message')
  Future<List<NotificationModel>> getMessages({
    @Query('limit') int? limit,
    @Query('since') int? since,
  });
}

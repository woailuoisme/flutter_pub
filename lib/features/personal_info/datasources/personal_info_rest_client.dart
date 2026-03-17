import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lunchbox_hub/core/network/dio_provider.dart';
import 'package:lunchbox_hub/core/network/response/api_response.dart';
import 'package:lunchbox_hub/features/personal_info/entities/profile_update_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_info_rest_client.g.dart';

@Riverpod(keepAlive: true)
PersonalInfoRestClient personalInfoRestClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return PersonalInfoRestClient(dio);
}

@RestApi()
abstract class PersonalInfoRestClient {
  factory PersonalInfoRestClient(Dio dio, {String baseUrl}) =
      _PersonalInfoRestClient;

  /// 更新用户信息
  @POST('/api/v2/admin/auth/profile_update')
  @MultiPart()
  Future<ApiResponse<ProfileUpdateData>> updateProfile({
    @Part() String? name,
    @Part() String? mobile,
    @Part() File? avatar,
  });
}

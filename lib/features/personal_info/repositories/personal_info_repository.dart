import 'dart:io';
import 'package:lunchbox_hub/features/personal_info/datasources/personal_info_rest_client.dart';
import 'package:lunchbox_hub/features/personal_info/entities/profile_update_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_info_repository.g.dart';

@Riverpod(keepAlive: true)
PersonalInfoRepository personalInfoRepository(Ref ref) {
  return PersonalInfoRepository(ref.watch(personalInfoRestClientProvider));
}

class PersonalInfoRepository {
  PersonalInfoRepository(this._client);

  final PersonalInfoRestClient _client;

  Future<ProfileUpdateData?> updateProfile({
    String? name,
    String? mobile,
    File? avatar,
  }) async {
    final response = await _client.updateProfile(
      name: name,
      mobile: mobile,
      avatar: avatar,
    );
    return response.data;
  }
}

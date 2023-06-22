import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

@freezed
class LoginResponseData with _$LoginResponseData {
  const factory LoginResponseData(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'role_id') int? roleId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'dob') String? dob,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'createdata') String? created,
      @JsonKey(name: 'modified') String? modified,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'country_id') String? countryId,
      @JsonKey(name: 'profile_pic') String? profilePic}) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neostore_app/config/base_response.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_response_data.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user_msg') String? userMsg,
    @JsonKey(name: 'data') LoginResponseData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

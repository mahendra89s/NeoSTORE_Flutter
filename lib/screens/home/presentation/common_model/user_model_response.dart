import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neostore_app/screens/home/presentation/common_model/user_model.dart';

part 'user_model_response.freezed.dart';
part 'user_model_response.g.dart';

@freezed
class UserModelResponse with _$UserModelResponse {
  const factory UserModelResponse(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'user_msg') String? userMsg,
      @JsonKey(name: 'data') UserModel? data}) = _UserModelResponse;

  factory UserModelResponse.fromJson(Map<String, dynamic> json) =>
      _$UserModelResponseFromJson(json);
}

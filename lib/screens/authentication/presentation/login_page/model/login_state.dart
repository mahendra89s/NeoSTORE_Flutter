import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_response.dart';

import '../../../../../config/common_api_status_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {LoginResponse? data,
      @Default(false) bool isLoading,
      @Default("") String errorMsg,
      Status? status}) = _LoginState;

  const LoginState._();
}

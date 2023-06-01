import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/authentication/domain/usecases/login_use_case.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_state.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/provider/login_provider.dart';

class LoginStateNotifier extends StateNotifier<LoginState> {
  final LoginUseCase loginUseCase;

  LoginStateNotifier({required this.loginUseCase}) : super(const LoginState());

  callAuthenticationUserApi(LoginRequest request) async {
    state = state.copyWith(isLoading: true, status: Status.loading);
    final response = await loginUseCase.authorizeUserUseCase(request);

    switch (response.status) {
      case Status.success:
        {
          state = state.copyWith(
              status: response.status, data: response.data, isLoading: false);
          break;
        }
      case Status.error:
        {
          state = state.copyWith(status: response.status, isLoading: false);
          break;
        }
      case Status.failure:
        {
          state = state.copyWith(
              status: response.status,
              errorMsg: response.errorString ?? "",
              isLoading: false);
          break;
        }
      case Status.loading:
        {
          state = state.copyWith(isLoading: true);
          break;
        }
    }
  }
}

final authenticateProvider =
    StateNotifierProvider.autoDispose<LoginStateNotifier, LoginState>(
        (ref) => LoginStateNotifier(loginUseCase: ref.read(loginUseCase)));

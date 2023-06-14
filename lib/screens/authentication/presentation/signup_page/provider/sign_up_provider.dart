import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/model/sign_up_request.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/provider/sign_up_notifier.dart';

import '../../../../../config/common_api_status_model.dart';
import '../../../domain/usecases/sign_up_use_case.dart';
import '../../login_page/model/login_state.dart';

class SignUpStateNotifier extends StateNotifier<LoginState> {
  final SignUpUseCase signUpUseCase;

  SignUpStateNotifier({required this.signUpUseCase})
      : super(const LoginState());

  callRegisterUserApi(SignUpRequest request) async {
    state = state.copyWith(isLoading: true, status: Status.loading);
    final response = await signUpUseCase.registerUser(request);

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

final registerProvider =
    StateNotifierProvider.autoDispose<SignUpStateNotifier, LoginState>(
        (ref) => SignUpStateNotifier(signUpUseCase: ref.read(signUpUseCase)));

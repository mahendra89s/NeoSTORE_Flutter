import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/authentication/domain/repository/authentication_repository.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/model/sign_up_request.dart';

class SignUpUseCase {
  AuthenticationRepository repository;
  SignUpUseCase({required this.repository});

  Future<CommonApiStatus> registerUser(SignUpRequest request) {
    return repository.registerUser(request);
  }
}

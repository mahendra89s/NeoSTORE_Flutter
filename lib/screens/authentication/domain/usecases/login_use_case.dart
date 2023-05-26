import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/authentication/domain/repository/authentication_repository.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';

class LoginUseCase {
  AuthenticationRepository repository;
  LoginUseCase({required this.repository});

  Future<CommonApiStatus> authorizeUserUseCase(LoginRequest request) async {
    return repository.authorizeUser(request);
  }
}

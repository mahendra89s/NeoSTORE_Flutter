import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/authentication/data/service/authentication_api_service.dart';
import 'package:neostore_app/screens/authentication/domain/repository/authentication_repository.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/model/sign_up_request.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationApiService apiService;
  AuthenticationRepositoryImpl(this.apiService);

  @override
  Future<CommonApiStatus> authorizeUser(LoginRequest request) async {
    return apiService.postUserLogin(request);
  }

  @override
  Future<CommonApiStatus> registerUser(SignUpRequest request) {
    return apiService.postRegisterUser(request);
  }
}

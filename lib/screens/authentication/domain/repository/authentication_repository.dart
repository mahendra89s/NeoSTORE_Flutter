import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/model/sign_up_request.dart';

abstract class AuthenticationRepository {
  Future<CommonApiStatus> authorizeUser(LoginRequest request);

  Future<CommonApiStatus> registerUser(SignUpRequest request);
}

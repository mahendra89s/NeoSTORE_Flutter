import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:http/http.dart' as http;
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_response.dart';
import 'package:neostore_app/utils/constants.dart';

class AuthenticationApiService {
  Future<CommonApiStatus> postUserLogin(LoginRequest loginRequest) async {
    try {
      const user = Constant.BASE_URL + Constant.USER_LOGIN_URL;
      final response = await http.post(Uri.parse(user),
          headers: {'content-type': 'application/json'},
          body: loginRequest.toJson()) as LoginResponse;

      switch (response.status) {
        case 200:
          {
            return CommonApiStatus.success(data: response);
          }
        default:
          {
            return CommonApiStatus.failure(errorMsg: response.message);
          }
      }
    } catch (e) {
      return CommonApiStatus.error();
    }
  }
}

import 'dart:convert';

import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:http/http.dart' as http;
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_request.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/model/login_response.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/model/sign_up_request.dart';
import 'package:neostore_app/shared_preferences/user_shared_preference.dart';
import 'package:neostore_app/utils/constants.dart';

class AuthenticationApiService {
  Future<CommonApiStatus> postUserLogin(LoginRequest loginRequest) async {
    try {
      const user = Constant.BASE_URL + Constant.USER_LOGIN_URL;
      final response =
          await http.post(Uri.parse(user), body: loginRequest.toJson());

      final data = LoginResponse.fromJson(jsonDecode(response.body));
      switch (data.status) {
        case 200:
          {
            await UserPreference.setUser(data);
            await UserPreference.setIsUserLoggedIn(
                data.data?.accessToken ?? "");
            await UserPreference.setAccessToken(data.data?.accessToken ?? "");
            return CommonApiStatus.success(data: data);
          }
        default:
          {
            return CommonApiStatus.failure(errorMsg: data.message);
          }
      }
    } catch (e) {
      e;
      return CommonApiStatus.error();
    }
  }

  Future<CommonApiStatus> postRegisterUser(SignUpRequest request) async {
    try {
      const user = Constant.BASE_URL + Constant.USER_REGISTER_URL;
      final response = await http.post(Uri.parse(user), body: request.toJson());

      final data = LoginResponse.fromJson(jsonDecode(response.body));
      switch (data.status) {
        case 200:
          {
            await UserPreference.setUser(data);
            await UserPreference.setIsUserLoggedIn(
                data.data?.accessToken ?? "");
            await UserPreference.setAccessToken(data.data?.accessToken ?? "");
            return CommonApiStatus.success(data: data);
          }
        default:
          {
            return CommonApiStatus.failure(errorMsg: data.message);
          }
      }
    } catch (e) {
      e;
      return CommonApiStatus.error();
    }
  }
}

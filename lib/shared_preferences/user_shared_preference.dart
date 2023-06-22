import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../screens/authentication/presentation/login_page/model/login_response.dart';
import '../screens/authentication/presentation/login_page/model/login_response_data.dart';
import '../screens/home/presentation/common_model/user_model.dart';

class UserPreference {
  static SharedPreferences? _preferences;

  static const _isUserLoggedIn = "isUserLoggedIn";
  static const _accessToken = "accessToken";
  static const _userData = "userData";
  static const _noOfCart = "noOfCart";
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setUser(LoginResponse user) async {
    final json = jsonEncode(user.toJson());
    final userId = (user.data?.id).toString();

    await _preferences?.setString(userId, json);
  }

  static LoginResponse getUser(String userId) {
    final json = _preferences?.getString(userId);
    return LoginResponse.fromJson(jsonDecode(json ?? ""));
  }

  static Future setIsUserLoggedIn(String accessToken) async {
    await _preferences?.setString(_isUserLoggedIn, accessToken);
  }

  static bool getIsUserLoggedIn() {
    return (_preferences?.getString(_isUserLoggedIn) ?? "").isNotEmpty;
  }

  static Future setAccessToken(String accessToken) async {
    await _preferences?.setString(_accessToken, accessToken);
  }

  static String getAccessToken() => _preferences?.getString(_accessToken) ?? "";

  static Future setUserData(String data) async {
    await _preferences?.setString(_userData, data);
  }

  static LoginResponseData? getUserData() {
    try {
      final data = _preferences?.getString(_userData) ?? "";
      return LoginResponseData.fromJson(jsonDecode(data));
    } catch (e) {
      null;
    }
  }

  static Future setNoOfCart(int cart) async {
    await _preferences?.setInt(_noOfCart, cart);
  }

  static int getNoOfCart() => _preferences?.getInt(_noOfCart) ?? 0;
}

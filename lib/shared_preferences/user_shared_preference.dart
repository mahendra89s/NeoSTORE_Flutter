import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../screens/authentication/presentation/login_page/model/login_response.dart';

class UserPreference {
  static SharedPreferences? _preferences;

  static const _isUserLoggedIn = "isUserLoggedIn";
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

  static Future setIsUserLoggedIn() async {
    await _preferences?.setBool(_isUserLoggedIn, true);
  }

  static bool getIsUserLoggedIn() {
    return _preferences?.getBool(_isUserLoggedIn) ?? false;
  }
}

import 'dart:convert';

import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/home/presentation/common_model/user_model_response.dart';
import 'package:neostore_app/shared_preferences/user_shared_preference.dart';

import '../../../../utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<CommonApiStatus> getUserDetails() async {
    try {
      const user = Constant.BASE_URL + Constant.USER_DATA;
      print("URL" + user);
      Map<String, String> header = {
        "access_token": UserPreference.getAccessToken()
      };
      final response = await http.get(Uri.parse(user), headers: header);
      print(response);
      final data = UserModelResponse.fromJson(jsonDecode(response.body));
      switch (data.status) {
        case 200:
          {
            UserPreference.setUserData(jsonEncode(data.data?.data));
            UserPreference.setNoOfCart(data.data?.totalCarts ?? 0);
            UserPreference.setProductCategories(data.data?.productCategories);
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

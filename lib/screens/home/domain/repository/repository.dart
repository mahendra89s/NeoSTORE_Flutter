import 'package:neostore_app/config/common_api_status_model.dart';

abstract class Repository {
  Future<CommonApiStatus> fetchUserDetails();
}

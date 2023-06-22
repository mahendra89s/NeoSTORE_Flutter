import 'package:fluttertoast/fluttertoast.dart';
import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/home/domain/repository/repository.dart';

class GetUserDataUseCase {
  Repository repository;
  GetUserDataUseCase({required this.repository});
  Future<CommonApiStatus> getUserDetails() async {
    return await repository.fetchUserDetails();
  }
}

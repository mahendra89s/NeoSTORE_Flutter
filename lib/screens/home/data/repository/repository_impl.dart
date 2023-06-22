import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/home/data/service/api_service.dart';
import 'package:neostore_app/screens/home/domain/repository/repository.dart';

class RepositoryImp extends Repository {
  ApiService apiService;
  RepositoryImp({required this.apiService});

  @override
  Future<CommonApiStatus> fetchUserDetails() async {
    return await apiService.getUserDetails();
  }
}

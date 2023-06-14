import 'package:neostore_app/screens/home/data/service/api_service.dart';
import 'package:neostore_app/screens/home/domain/repository/repository.dart';

class RepositoryImp extends Repository {
  ApiService apiService;
  RepositoryImp({required this.apiService});
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neostore_app/screens/home/data/repository/repository_impl.dart';
import 'package:neostore_app/screens/home/data/service/api_service.dart';
import 'package:neostore_app/screens/home/domain/repository/repository.dart';

final repositoryProvider = Provider<Repository>((ref) {
  return RepositoryImp(apiService: ref.read(apiServiceProvider));
});

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

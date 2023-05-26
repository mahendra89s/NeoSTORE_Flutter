import 'package:neostore_app/screens/authentication/data/repository/authentication_repository_impl.dart';
import 'package:neostore_app/screens/authentication/data/service/authentication_api_service.dart';
import 'package:riverpod/riverpod.dart';

import '../repository/authentication_repository.dart';

final authenticationRepositoryProvider =
    Provider<AuthenticationRepository>((ref) {
  return AuthenticationRepositoryImpl(ref.read(apiServiceProvider));
});

final apiServiceProvider =
    Provider<AuthenticationApiService>((ref) => AuthenticationApiService());

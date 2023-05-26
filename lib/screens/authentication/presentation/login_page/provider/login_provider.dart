import 'package:neostore_app/screens/authentication/domain/usecases/login_use_case.dart';
import 'package:riverpod/riverpod.dart';

import '../../../domain/provider/authentication_provider.dart';

final loginUseCase = Provider((ref) {
  return LoginUseCase(repository: ref.read(authenticationRepositoryProvider));
});

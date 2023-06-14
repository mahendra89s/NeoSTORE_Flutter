import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/provider/authentication_provider.dart';
import '../../../domain/usecases/sign_up_use_case.dart';

final signUpUseCase = Provider((ref) {
  return SignUpUseCase(repository: ref.read(authenticationRepositoryProvider));
});

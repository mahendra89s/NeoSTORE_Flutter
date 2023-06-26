import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neostore_app/config/common_api_status_model.dart';
import 'package:neostore_app/screens/home/domain/provider/data_provider.dart';
import 'package:neostore_app/screens/home/domain/usecase/get_user_data_use_case.dart';

final getUserDataUseCaseProvider = Provider(
    (ref) => GetUserDataUseCase(repository: ref.read(repositoryProvider)));

class UserDataNotifier extends StateNotifier<Status> {
  final GetUserDataUseCase getUserDataUseCase;
  UserDataNotifier({required this.getUserDataUseCase}) : super(Status.loading);

  callUserDataApi() async {
    final response = await getUserDataUseCase.getUserDetails();
    state = response.status;
    // switch (response.status) {
    //   case Status.success:
    //     {
    //       break;
    //     }
    //   case Status.failure:
    //     {
    //       break;
    //     }
    //   case Status.loading:
    //     {
    //       break;
    //     }
    //   case Status.error:
    //     {
    //       break;
    //     }
    // }
  }
}

final getUserDataProvider =
    StateNotifierProvider.autoDispose<UserDataNotifier, Status>((ref) =>
        UserDataNotifier(
            getUserDataUseCase: ref.read(getUserDataUseCaseProvider)));

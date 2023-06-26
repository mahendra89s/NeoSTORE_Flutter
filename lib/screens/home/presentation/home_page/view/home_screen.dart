import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/screens/home/presentation/home_page/view/home_page.dart';
import 'package:neostore_app/screens/home/presentation/utils/my_drawer.dart';
import 'package:neostore_app/utils/app_colors.dart';
import 'package:neostore_app/utils/custom_app_bar.dart';
import 'package:neostore_app/utils/string_resources.dart';

import '../../../../../config/common_api_status_model.dart';
import '../../../../../config/common_api_status_model.dart';
import '../../../../../config/common_api_status_model.dart';
import '../../../../../utils/loader.dart';
import '../provider/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

    final List<Widget> widget = [
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () => {},
      )
    ];

    return ScreenUtilInit(
        designSize: const Size(1080, 1920),
        builder: (_, child) {
          return Scaffold(
              key: _scaffoldkey,
              appBar: MyAppBar(
                  widgets: widget,
                  title: StringResources.neoStore,
                  appBar: AppBar(),
                  isMenu: true,
                  menuIconClicked: () {
                    _scaffoldkey.currentState?.openDrawer();
                  }),
              drawer: const MyDrawer(),
              body: Consumer(builder: (context, ref, child) {
                ref.watch(getUserDataProvider.notifier).callUserDataApi();
                Status apiCallState = ref.watch(getUserDataProvider);

                if (apiCallState == Status.loading) {
                  return const Loader();
                }
                if (apiCallState == Status.success) {
                  return const HomePage();
                }
                if (apiCallState == Status.failure) {
                  return const Text("Failed");
                }

                return const Text("");
              }));
        });
  }
}

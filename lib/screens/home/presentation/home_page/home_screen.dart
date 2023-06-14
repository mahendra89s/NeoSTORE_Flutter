import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/utils/custom_app_bar.dart';
import 'package:neostore_app/utils/string_resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> widget = [
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () => {},
      )
    ];

    void menuClicked() {}

    return ScreenUtilInit(
        designSize: const Size(1080, 1920),
        builder: (_, child) {
          return Scaffold(
            appBar: MyAppBar(
              widgets: widget,
              title: StringResources.register,
              appBar: AppBar(),
              isMenu: true,
              menuIconClicked: menuClicked,
            ),
          );
        });
  }
}

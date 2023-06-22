import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/screens/home/presentation/utils/my_drawer.dart';
import 'package:neostore_app/utils/custom_app_bar.dart';
import 'package:neostore_app/utils/string_resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widget = [
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () => {},
      )
    ];

    menuClicked() {
      _scaffoldkey.currentState?.openDrawer();
    }

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
              menuIconClicked: menuClicked,
            ),
            drawer: MyDrawer(),
          );
        });
  }
}

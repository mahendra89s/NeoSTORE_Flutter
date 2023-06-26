import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neostore_app/screens/authentication/presentation/login_page/view/login_page.dart';
import 'package:neostore_app/route/route_constants.dart';
import 'package:neostore_app/route/route_generator.dart';
import 'package:neostore_app/shared_preferences/user_shared_preference.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreference.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (_, child) {
      return MaterialApp(
        title: 'NeoSTORE',
        theme: ThemeData(
          fontFamily: 'Gotham',
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
        debugShowCheckedModeBanner: false,
        initialRoute: UserPreference.getIsUserLoggedIn()
            ? RouteConstants.homeRoute
            : RouteConstants.loginRoute,
        onGenerateRoute: RouteGenerator.generateRoute,
      );
    });
  }
}

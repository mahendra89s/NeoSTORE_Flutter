import 'package:flutter/material.dart';
import 'package:neostore_app/route/route_constants.dart';
import 'package:neostore_app/screens/authentication/presentation/signup_page/view/sign_up_page.dart';
import 'package:neostore_app/screens/home/presentation/home_page/view/home_screen.dart';

import '../screens/authentication/presentation/login_page/view/login_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.loginRoute:
        return MaterialPageRoute(builder: (context) {
          return const LoginPage();
        });

      case RouteConstants.signUpRoute:
        return MaterialPageRoute(builder: (context) {
          return const SignUpPage();
        });

      case RouteConstants.homeRoute:
        return MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        });
    }
  }
}

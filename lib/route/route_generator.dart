import 'package:flutter/material.dart';
import 'package:neostore_app/route/route_constants.dart';

import '../screens/authentication/presentation/login_page/view/login_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.loginRoute:
        MaterialPageRoute(builder: (context) {
          return const LoginPage();
        });
    }
  }
}

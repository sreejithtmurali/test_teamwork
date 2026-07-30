import 'package:flutter/material.dart';
import 'package:test_teamwork/screens/login/loginview.dart';
import 'package:test_teamwork/screens/splash/splashview.dart';


class AppRoutes {
  // Route Names
  static const String splash = "/";
  static const String login = "/login";

  // Route Generator
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const Splashview(),
        );

      case login:
        return MaterialPageRoute(
          builder: (_) => const Loginview(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Page Not Found"),
            ),
          ),
        );
    }
  }
}
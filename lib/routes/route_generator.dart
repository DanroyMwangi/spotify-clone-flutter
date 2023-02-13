// Dart import
import 'package:flutter/material.dart';

//Package imports
import 'package:spotify_clone/config/constants.dart';
import 'package:spotify_clone/pages/error_page.dart';
import 'package:spotify_clone/pages/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: ((_) => const HomePage()));
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}

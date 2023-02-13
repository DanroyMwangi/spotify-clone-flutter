import 'package:flutter/material.dart';
import 'package:spotify_clone/config/constants.dart';
import 'package:spotify_clone/routes/route_generator.dart';
import 'package:spotify_clone/theme/theme_data.dart';

void main() {
  runApp(MaterialApp(
    theme: darkTheme,
    initialRoute: homePage,
    onGenerateRoute: RouteGenerator.generatorRoute,
  ));
}

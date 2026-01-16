import 'package:flutter/material.dart';
import 'package:hurry_app/app/screens/configuration_screen.dart';
import 'package:hurry_app/app/screens/hurry_screen.dart';
import 'package:hurry_app/app/screens/main_screen.dart';
import 'package:hurry_app/app/utils/routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.mainScreen,
      routes: {
        Routes.mainScreen : (context) => MainScreen(),
        Routes.configurationScreen : (context) => ConfigurationScreen(),
        Routes.hurryScreen : (context) => HurryScreen(),
      },
    );
  }
}

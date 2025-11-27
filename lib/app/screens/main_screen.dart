import 'package:flutter/material.dart';
import 'package:hurry_app/app/components/button_main_screen.dart';
import 'package:hurry_app/app/utils/routes.dart';

void navigateConfig(BuildContext context){
  Navigator.of(context).pushNamed(Routes.configurationScreen);
}

void susto(BuildContext _){
  print("Boo");
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/print_inicio.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    ButtonMainScreen(buttonAction: navigateConfig),
                    ButtonMainScreen(buttonAction: susto),
                  ],
                )
              ],
            )
          ],
        ),
      );
  }
}
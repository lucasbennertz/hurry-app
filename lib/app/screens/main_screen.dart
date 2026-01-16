import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hurry_app/app/components/button_main_screen.dart';
import 'package:hurry_app/app/utils/image_path.dart';
import 'package:hurry_app/app/utils/routes.dart';
import 'package:provider/provider.dart';

void navigateConfig(BuildContext context) {
  Navigator.of(context).pushNamed(Routes.configurationScreen);
}

// Placeholder function for the second button
void navigateHurry(BuildContext context) {
  Navigator.of(context).pushNamed(Routes.hurryScreen);
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Watch for changes in the ImagePath provider
    final imagePath = context.watch<ImagePath>().imagePath;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Conditionally display the background image
          (imagePath != null && imagePath.isNotEmpty)
              ? Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  "assets/print_inicio.png",
                  fit: BoxFit.cover,
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  ButtonMainScreen(buttonAction: navigateConfig),
                  ButtonMainScreen(buttonAction: navigateHurry),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hurry_app/app/main_app.dart';
import 'package:hurry_app/app/utils/image_path.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ImagePath(),
      child: MainApp(),
      )
    );
}



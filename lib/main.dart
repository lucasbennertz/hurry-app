import 'package:flutter/material.dart';
import 'package:hurry_app/app/main_app.dart';
import 'package:hurry_app/app/utils/image_path.dart';
import 'package:provider/provider.dart';

void main() async {
  // Ensure that Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Create the provider instance
  final imagePathProvider = ImagePath();

  // Load the initial path from storage
  await imagePathProvider.loadInitialPath();

  runApp(
    // Use the .value constructor to provide the existing instance
    ChangeNotifierProvider.value(
      value: imagePathProvider,
      child: const MainApp(),
    ),
  );
}

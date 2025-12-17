import 'package:flutter/material.dart';
import 'package:hurry_app/app/utils/conf_shared_preferences.dart';
import 'package:hurry_app/app/utils/image_path.dart';
import 'package:provider/provider.dart';

class ButtonConfirmImage extends StatelessWidget {
  const ButtonConfirmImage({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // Get the provider instance
          final imagePathProvider = context.read<ImagePath>();

          // Save the path to shared preferences
          ConfSharedPreferences conf = await ConfSharedPreferences.create();
          conf.savePath(imagePath);

          // Update the provider
          imagePathProvider.setImagePath(imagePath);

          // Check if the widget is still mounted before using context
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Background image saved!')),
            );
            Navigator.pop(context);
          }
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(fontSize: 16),
        ),
        child: const Text("Confirm Background",
            style: TextStyle(color: Colors.black)));
  }
}
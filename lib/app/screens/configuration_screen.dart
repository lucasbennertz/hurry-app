import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hurry_app/app/components/button_confirm_image.dart';
import 'package:hurry_app/app/components/button_image_selector.dart';
import 'package:hurry_app/app/utils/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class ConfigurationScreen extends StatefulWidget {
  const ConfigurationScreen({super.key});

  @override
  State<ConfigurationScreen> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  File? _selectedImageFile;
  final ImagePickerHelper _imagePicker = ImagePickerHelper();

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _imagePicker.pickImage();

    if (pickedFile != null) {
      setState(() {
        _selectedImageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Select background image:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            if (_selectedImageFile == null)
              // Show the initial image selector button
              ButtonImageSelector(
                onPressed: _pickImage,
                text: "Select Image",
              )
            else
              // Show the selected image and confirmation buttons
              Column(
                children: [
                  Image.file(_selectedImageFile!),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonConfirmImage(imagePath: _selectedImageFile!.path),
                      ButtonImageSelector(
                        onPressed: _pickImage,
                        text: "Change Image",
                      ),
                    ],
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ButtonImageSelector extends StatelessWidget {
  const ButtonImageSelector({super.key,  required this.imageSelector});
  final Future<XFile?> Function() imageSelector; 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: (){
                imageSelector();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text("Escolher Imagem", style: TextStyle(color: Colors.black),),
            );
  }
}
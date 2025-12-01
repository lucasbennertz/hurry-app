import 'package:flutter/material.dart';

class ButtonConfirmImage extends StatelessWidget {
  const ButtonConfirmImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: TextStyle(fontSize: 16),
          ),
          child: Text("Confirmar fundo", style: TextStyle(color: Colors.black))
        );
  }
}
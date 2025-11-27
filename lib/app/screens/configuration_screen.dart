import 'package:flutter/material.dart';

class ConfigurationScreen extends StatelessWidget {
  const ConfigurationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Selecione a tela de fundo:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ElevatedButton(
              onPressed: (){
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(fontSize: 16),
              ),
              child: Text("Escolher Imagem", style: TextStyle(color: Colors.black),),
            ),
            
          ],
        ),
      ),
    );
  }
}
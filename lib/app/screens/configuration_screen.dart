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
  Future<XFile?>? imagemSelecionada;
  
  Future<XFile?> selecionarImagem() {
    PegadorDeImagem pegador = PegadorDeImagem();
    setState(() {
      imagemSelecionada = pegador.pegarImagem();
    });
    return imagemSelecionada!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuração"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Selecione a tela de fundo:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            imagemSelecionada == null ? ButtonImageSelector(
              imageSelector: selecionarImagem,
            ) : Container(),
            SizedBox(
              height: 16,
            ),
            FutureBuilder(
              future: imagemSelecionada,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                  return Column(
                    children: [
                      Image.file(File(snapshot.data!.path)),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonConfirmImage(),
                          ButtonImageSelector(
                            imageSelector: selecionarImagem
                          )
                        ],
                      )
                    ],
                  );
                }
                return Container();
              },
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

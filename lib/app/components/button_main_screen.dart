import 'package:flutter/material.dart';

class ButtonMainScreen extends StatelessWidget {
  const ButtonMainScreen({super.key, required this.buttonAction});
  final Function buttonAction;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).width * 0.5,
            child: FloatingActionButton(
              onPressed: (){
                buttonAction(context);
              },
              backgroundColor: Colors.transparent,
              ),
          );
  }
}
import 'package:flutter/material.dart';

class ButtonMainScreen extends StatelessWidget {
  const ButtonMainScreen({super.key, required this.buttonAction});
  final void Function(BuildContext) buttonAction;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).width * 0.5,
            child: ElevatedButton(
              onPressed: (){
                buttonAction(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.zero,
              ),
              child: Text(""),
          ));
  }
}
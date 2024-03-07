import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.text,
      required this.onPressedFunction,
      this.buttonWidth});
  final String text;
  final VoidCallback onPressedFunction;
  double? buttonWidth = 50;

//   const ButtonWidget ({
//     super.key,
//     required this.text,
//     required this.onPressed,
//     required this.buttonWidth,
// });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressedFunction,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            side: const BorderSide(color: Colors.blue, width: 2)),
        child: Text(text));
  }
}

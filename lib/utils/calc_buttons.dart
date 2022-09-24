import 'package:calculator_app/consts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String buttonText;
  final Function? callback;
  bool? pressed = false;

  Button({
    required this.height,
    required this.width,
    required this.buttonText,
    this.callback,
    this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonTextColor = AppColor.white;

    bool isPressed = false;

    pressed = isPressed;

    if (buttonText == 'AC' || buttonText == '+/-' || buttonText == '%') {
      buttonTextColor = AppColor.green;
    } else if (buttonText == '÷' ||
        buttonText == 'x' ||
        buttonText == '-' ||
        buttonText == '+' ||
        buttonText == '=') {
      buttonTextColor = AppColor.red;
    }
    return GestureDetector(
      onTap: () {
        callback!(buttonText);

        isPressed = true;
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColor.ff2a2d38dark,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
            child: Text(buttonText,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: buttonTextColor))),
      ),
    );
  }
}

import 'package:calculator_app/consts.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final String buttonText;

  const Button(
      {Key? key,
      required this.height,
      required this.width,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColor.ff2a2d38dark,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
            child: Text('$buttonText',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white))),
      ),
    );
  }
}

import 'package:calculator_app/utils/calc_buttons.dart';
import 'package:calculator_app/consts.dart';
import 'package:calculator_app/utils/dark_light_toggle.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int? firstNum;
  int? secondNum;
  String history = '';
  String textToDisplay = '';
  String? result;
  String? operation;

  void buttonClick(String value) {
    if (value == "AC") {
      firstNum = 0;
      secondNum = 0;
      textToDisplay = '';
      history = '';
      result = '';
    } else if (value == '%') {
      firstNum = int.parse(textToDisplay);
      result = (firstNum! * 0.01).toString();
    } else if (value == '+' || value == '-' || value == '÷' || value == 'x') {
      firstNum = int.parse(textToDisplay);
      result = '';
      operation = value;
    } else if (value == '=') {
      if (operation == '+') {
        secondNum = int.parse(textToDisplay);
        result = (firstNum! + secondNum!).toString();
        history = firstNum!.toString() +
            operation!.toString() +
            secondNum!.toString();
      }
      if (operation == '-') {
        secondNum = int.parse(textToDisplay);
        result = (firstNum! - secondNum!).toString();
        history = firstNum!.toString() +
            operation!.toString() +
            secondNum!.toString();
      }
      if (operation == 'x') {
        secondNum = int.parse(textToDisplay);
        result = (firstNum! * secondNum!).toString();
        history = firstNum!.toString() +
            operation!.toString() +
            secondNum!.toString();
      }
      if (operation == '÷') {
        secondNum = int.parse(textToDisplay);
        result = (firstNum! / secondNum!).toString();
        history = firstNum!.toString() +
            operation!.toString() +
            secondNum!.toString();
      }
    } else {
      result = (textToDisplay + value).toString();
    }

    debugPrint(value);

    setState(() {
      textToDisplay = result!;
    });
  }

  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColor.ff22252d_dark),
        child: SafeArea(
          child: Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.ff2a2d38dark,
                                ),
                                child: DarkLightModeToggleButton())),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              history,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  wordSpacing: 4.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              textToDisplay,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 54,
                                  wordSpacing: 10.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: 'AC',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '+/-',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '%',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '÷',
                            callback: buttonClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '7',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '8',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '9',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: 'x',
                            callback: buttonClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '4',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '5',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '6',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '-',
                            callback: buttonClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '1',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '2',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '3',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '+',
                            callback: buttonClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: 'R',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '0',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '.',
                            callback: buttonClick,
                          ),
                          Button(
                            height: fullHeight / 10.5,
                            width: fullWidth / 5,
                            buttonText: '=',
                            callback: buttonClick,
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

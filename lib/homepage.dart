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
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;

    var userInput = "";
    var result = "0";

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
                              userInput,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              result,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 54,
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
                              buttonText: 'AC'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '+/-'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '%'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '÷'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '7'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '8'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '9'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: 'x'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '4'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '5'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '6'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '-'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '1'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '2'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '3'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '+'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: 'R'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '0'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '.'),
                          Button(
                              height: fullHeight / 10.5,
                              width: fullWidth / 5,
                              buttonText: '='),
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

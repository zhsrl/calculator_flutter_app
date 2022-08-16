import 'package:calculator_app/consts.dart';
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
    return Scaffold(
        backgroundColor: DarkColors.dark,
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                color: DarkColors.secdark,
                              ),
                              child: DarkLightModeToggleButton()))
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: DarkColors.secdark,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class CalcButtonsWidget extends StatelessWidget {
  const CalcButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [],
        )
      ],
    );
  }
}

class DarkLightModeToggleButton extends StatefulWidget {
  DarkLightModeToggleButton({Key? key}) : super(key: key);

  @override
  State<DarkLightModeToggleButton> createState() =>
      _DarkLightModeToggleButtonState();
}

class _DarkLightModeToggleButtonState extends State<DarkLightModeToggleButton> {
  List<bool> isSelected = [false, true];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: isSelected,
      children: [Icon(Icons.light_mode), Icon(Icons.dark_mode_sharp)],
      onPressed: (int newIndex) {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            if (i == newIndex) {
              isSelected[i] = !isSelected[i];
            } else {
              isSelected[i] = false;
            }
          }
        });
      },
    );
  }
}

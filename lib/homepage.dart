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
        body: Container(
          decoration: BoxDecoration(color: DarkColors.dark),
          child: SafeArea(
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: DarkColors.secdark,
                                  ),
                                  child: DarkLightModeToggleButton())),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '14 + 130',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '144',
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Column(
                      children: [],
                    ),
                  ),
                ),
              ],
            ),
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
      selectedColor: Colors.white,
      fillColor: Colors.transparent,
      splashColor: Colors.transparent,
      borderColor: Colors.transparent,
      selectedBorderColor: Colors.transparent,
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

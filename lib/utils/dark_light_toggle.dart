import 'package:flutter/material.dart';

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

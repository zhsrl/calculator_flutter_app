import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData td) {
    _themeData = td;

    notifyListeners();
  }
}

import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyColorChangeModel extends ChangeNotifier {
  int _currentIndex = 0;
  Color randomColor = Colors.amber;

  onChange() {
    //When tapped this changes color to the next one
    int _currentColor = _changeColor();

    if (_currentIndex == _currentColor) {
      _currentIndex = 0;
    } else {
      _currentIndex += 1;
    }
    notifyListeners();
  }

  _changeColor() {
    math.Random random = math.Random();

    //This generates a random color.
    randomColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }
}

import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyFlipperModel extends ChangeNotifier {
  static int _flipState = 0;

  String _orelEnot = "assets/images/orel.png";
  String _reshka = "assets/images/reshka.png";
  static String _gifCoin = "assets/gif/coin.gif";

  //This is decorating box for coin gif being loaded
  BoxDecoration staticImage = BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage(_gifCoin),
    ),
  );

  void gifDefault() {
    //This resets the gif image
    staticImage = BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(_gifCoin),
      ),
    );
    print('default gif');
    notifyListeners();
  }

  void randomGeneration() {
    //if 0 = first side of coin else second side of coin
    math.Random _random = math.Random();
    _flipState = _random.nextInt(2);
    if (_flipState == 0) {
      staticImage = BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(_orelEnot),
        ),
      );
      print('orel image');
    } else {
      staticImage = BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(_reshka),
        ),
      );
      print('reshka image');
    }
    notifyListeners();
  }
}

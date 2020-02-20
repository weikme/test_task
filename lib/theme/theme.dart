import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../screens/button_color_change/button_color_change_screen.dart';
import '../screens/coin_flip/coin_flip_screen.dart';
import '../screens/home/home_screen.dart';

class MyTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test task',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        CoinFlip.id: (context) => CoinFlip(),
        ButtonColorReverse.id: (context) => ButtonColorReverse(),
      },
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/color_change_model.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Provider.of<MyColorChangeModel>(context, listen: false).onChange(),
      child: Container(
        color: Provider.of<MyColorChangeModel>(context).randomColor,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Hey there!',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

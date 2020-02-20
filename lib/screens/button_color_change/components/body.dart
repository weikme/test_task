import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/raised_button/raised_button.dart';
import '../../../provider/color_change_model.dart';

class BodyButtonColorChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<MyColorChangeModel>(context).randomColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.center,
        child: MyRaisedButton(
          text: 'Tap me please!!!!',
          onPressed: () =>
              Provider.of<MyColorChangeModel>(context, listen: false)
                  .onChange(),
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
        ),
      ),
    );
  }
}

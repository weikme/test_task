import 'package:flutter/material.dart';

import 'components/body.dart';

class ButtonColorReverse extends StatelessWidget {
  static const String id = 'Button Color Reverse';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$id'),
      ),
      body: BodyButtonColorChange(),
    );
  }
}

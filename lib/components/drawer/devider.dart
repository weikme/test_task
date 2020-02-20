import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  MyDivider({this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Divider(height: 15, color: color, thickness: 2);
  }
}

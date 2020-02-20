import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;

  MyRaisedButton({
    @required this.onPressed,
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: onPressed,
      color: color,
      highlightElevation: 20,
    );
  }
}

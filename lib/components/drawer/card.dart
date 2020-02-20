import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final Function onTap;

  MyCard({
    @required this.onTap,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[800],
      child: ListTile(
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
        subtitle: Text(
          'Additionaly',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: onTap,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$id'),
      ),
      drawer: DrawerWidget(),
      body: Body(),
    );
  }
}

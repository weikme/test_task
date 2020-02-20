import 'package:flutter/material.dart';

import '../../screens/coin_flip/components/body.dart';

class CoinFlip extends StatelessWidget {
  static const String id = 'Coin Flip Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${CoinFlip.id}'),
      ),
      body: CoinFlipperBody(),
    );
  }
}

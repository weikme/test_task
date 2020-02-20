import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/raised_button/raised_button.dart';
import '../../../provider/flipper_model.dart';

class CoinFlipperBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: Provider.of<MyFlipperModel>(context).staticImage,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Flexible(
            child: MyRaisedButton(
              text: 'Tap me please!!!!',
              color: Colors.red,
              onPressed: () =>
                  Provider.of<MyFlipperModel>(context, listen: false)
                      .randomGeneration(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: MyRaisedButton(
              text: 'Reset me harder <3',
              onPressed: () =>
                  Provider.of<MyFlipperModel>(context, listen: false)
                      .gifDefault(),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

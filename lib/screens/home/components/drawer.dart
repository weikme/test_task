import 'package:flutter/material.dart';
import 'package:test_task/components/drawer/devider.dart';

import '../../../components/drawer/card.dart';
import '../../../screens/button_color_change/button_color_change_screen.dart';
import '../../../screens/coin_flip/coin_flip_screen.dart';

class DrawerWidget extends StatelessWidget {
  final String _drawerImage = 'assets/images/drawerImage.png';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey[800],
            ),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(_drawerImage),
                    radius: 40,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Yaroslav Siomka',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Hug your trainee dev\nand make sure\nhe`s happy <3',
                      maxLines: 3,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          MyDivider(color: Colors.teal),
          MyCard(
            title: 'Coin flipper',
            onTap: () => Navigator.pushNamed(context, CoinFlip.id),
          ),
          MyDivider(color: Colors.brown),
          MyCard(
            title: 'Changing whole page and button colors',
            onTap: () => Navigator.pushNamed(context, ButtonColorReverse.id),
          ),
          MyDivider(color: Colors.brown),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/provider/color_change_model.dart';

import 'provider/flipper_model.dart';
import 'theme/theme.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MyFlipperModel()),
          ChangeNotifierProvider(create: (context) => MyColorChangeModel()),
        ],
        child: MyTheme(),
      ),
    );

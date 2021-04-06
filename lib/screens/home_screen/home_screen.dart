import 'package:eduvid/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'views/view.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: HomeScreenWeb(),
      mediumScreen: HomeScreenWeb(),
      smallScreen: HomeScreenMobile(),
    );
  }
}

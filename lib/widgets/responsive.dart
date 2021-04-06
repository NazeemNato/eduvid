import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveLayout({
    Key key,
    @required this.largeScreen,
    this.smallScreen,
    @required this.mediumScreen,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 700;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return largeScreen;
        } else if (constraints.maxWidth > 700 && constraints.maxWidth <= 1200) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}

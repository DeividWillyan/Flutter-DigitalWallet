import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      circleColor: Color(0XFF567DF4),
      tabs: [
        TabData(iconData: Icons.tab, title: "Home"),
        TabData(iconData: Icons.border_horizontal, title: "Search"),
        TabData(iconData: Icons.add_alert, title: "Basket")
      ],
      onTabChangedListener: (_) {},
    );
  }
}

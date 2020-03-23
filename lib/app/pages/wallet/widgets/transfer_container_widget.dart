import 'package:flutter/material.dart';

class TransferContainerWiget extends StatelessWidget {
  int color;
  IconData icon;
  double iconSize;
  int iconColor;

  TransferContainerWiget(
      {@required this.color,
      this.icon = Icons.person,
      this.iconSize = 45,
      this.iconColor = 0xFFC3C3C3});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(color),
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: Color(iconColor),
      ),
    );
  }
}

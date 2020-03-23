import 'package:flutter/material.dart';

class ServiceContainerWidget extends StatelessWidget {
  int containerColor;
  IconData icon;
  double iconSize;
  int color;
  String label;

  ServiceContainerWidget(
      {this.containerColor, this.icon, this.iconSize, this.color, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.height / 13,
      decoration: BoxDecoration(
        color: Color(containerColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: Color(color),
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(color),
            ),
          )
        ],
      ),
    );
  }
}

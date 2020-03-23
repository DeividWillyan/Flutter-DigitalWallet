import 'package:flutter/material.dart';

class DefaultContainerWidget extends StatelessWidget {
  Widget widget;
  double marginTop;
  DefaultContainerWidget({this.widget, this.marginTop = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 2.0,
            spreadRadius: 1,
          ),
        ],
      ),
      child: widget,
    );
  }
}

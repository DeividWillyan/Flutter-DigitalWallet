import 'package:flutter/material.dart';

PreferredSizeWidget AppBarWidget(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xFFF9F9F9),
    iconTheme: IconThemeData.fallback(),
    title: Text(
      'Wallets',
      style: TextStyle(
          color: Color(0xFF22215C), fontWeight: FontWeight.w600, fontSize: 24),
    ),
    centerTitle: false,
    actions: [
      Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width / 3.5,
        decoration: BoxDecoration(
          color: Color(0xFFF3F4FA),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.add, color: Color(0xFF22215C)),
            Text(
              'Add Card',
              style: TextStyle(
                  color: Color(0xFF22215C), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )
    ],
  );
}

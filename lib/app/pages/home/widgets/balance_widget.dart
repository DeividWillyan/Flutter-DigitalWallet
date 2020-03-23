import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              '\$498.57',
              style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Text(
            'Available Balance',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              Icon(
                Icons.brightness_1,
                size: 12,
                color: Color(0xFF567DF4),
              ),
              SizedBox(width: 10),
              Text(
                'Spent',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '\$1.598',
              style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: <Widget>[
              Icon(
                Icons.brightness_1,
                size: 12,
                color: Color(0xFFFFC701),
              ),
              SizedBox(width: 10),
              Text(
                'Earned',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '\$5.984',
              style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 26,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}

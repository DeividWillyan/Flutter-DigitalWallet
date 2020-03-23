import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  int color;
  String img;
  String cardNumber;
  String name;
  String dtValid;

  CreditCardWidget(
      {this.color, this.img, this.cardNumber, this.name, this.dtValid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.5,
        width: MediaQuery.of(context).size.width / 1.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(color),
          boxShadow: [
            BoxShadow(
              color: Color(color).withOpacity(.6),
              blurRadius: 10.0,
              offset: Offset(0, 4),
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 35),
              height: 50,
              width: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardNumber,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CARD HOLDER',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 10),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'EXPIRES',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 10),
                          ),
                          Text(
                            dtValid,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

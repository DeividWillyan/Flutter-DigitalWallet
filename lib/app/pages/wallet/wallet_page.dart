import 'package:flutter/material.dart';
import 'package:wallet/app/pages/wallet/widgets/appBar_widget.dart';
import 'package:wallet/app/pages/wallet/widgets/creditCard_widget.dart';
import 'package:wallet/app/pages/wallet/widgets/transfer_container_widget.dart';
import 'package:wallet/app/shared/widgets/bottom_navigation_bar.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(context),
      body: _body(context),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }

  Widget _body(context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height / 4.2,
            child: Row(
              children: [
                CreditCardWidget(
                  color: 0xFF567DF4,
                  img: 'assets/image/master.png',
                  cardNumber: '2598   ****   ****   1073',
                  name: 'Mahmud Nik',
                  dtValid: '01/24',
                ),
                CreditCardWidget(
                  color: 0xFFF77703,
                  img: 'assets/image/visa.png',
                  cardNumber: '3754   ****   ****   1073',
                  name: 'Mahmud Nik',
                  dtValid: '01/24',
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '__ ',
              style: TextStyle(
                  color: Color(0xFF567DF4),
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
            Text(
              '_ _',
              style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          height: 130,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transfer Money',
                    style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TransferContainerWiget(color: 0xFFFBE9ED),
                        TransferContainerWiget(color: 0xFFF3E7FD),
                        TransferContainerWiget(color: 0xFFFBE9ED),
                        TransferContainerWiget(color: 0xFFF3E7FD),
                        TransferContainerWiget(
                          color: 0xFFEEF2FE,
                          icon: Icons.add,
                          iconSize: 24,
                          iconColor: 0xFF6F90F6,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'All',
                            style: TextStyle(
                              color: Color(0xFF22215B),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Received',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Send',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Color(0xFF597FF3),
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.broken_image, size: 50),
                    title: Text('Adobe Photoshop'),
                    subtitle: Text('Subscription Free'),
                    trailing: Text('-\$99.00'),
                    contentPadding: EdgeInsets.all(0),
                  ),
                  ListTile(
                    leading: Icon(Icons.broken_image, size: 50),
                    title: Text('Uber'),
                    subtitle: Text('Transaction Free'),
                    trailing: Text('-\$17.50'),
                    contentPadding: EdgeInsets.all(0),
                  ),
                  ListTile(
                    leading: Icon(Icons.broken_image, size: 50),
                    title: Text('City Bank, India'),
                    subtitle: Text('Salary'),
                    trailing: Text('+\$1250.00'),
                    contentPadding: EdgeInsets.all(0),
                  ),
                  ListTile(
                    leading: Icon(Icons.broken_image, size: 50),
                    title: Text('Dribbble'),
                    subtitle: Text('Subscription Free'),
                    trailing: Text('-\$60.00'),
                    contentPadding: EdgeInsets.all(0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

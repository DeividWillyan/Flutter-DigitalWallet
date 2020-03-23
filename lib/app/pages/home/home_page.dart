import 'package:flutter/material.dart';
import 'package:wallet/app/pages/home/widgets/balance_widget.dart';
import 'package:wallet/app/pages/home/widgets/chart_widget.dart';
import 'package:wallet/app/pages/home/widgets/default_container_widget.dart';
import 'package:wallet/app/pages/home/widgets/footer_user_widget.dart';
import 'package:wallet/app/pages/home/widgets/service_container_widget.dart';
import 'package:wallet/app/pages/wallet/wallet_page.dart';
import 'package:wallet/app/shared/widgets/bottom_navigation_bar.dart';
import 'package:wallet/app/utils/navigator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }

  Widget _body() {
    return Stack(
      children: [
        Container(
          color: Color(0xFFFAFAFA),
        ),
        FooterUserWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 120, left: 25, right: 25),
          child: ListView(
            children: [
              DefaultContainerWidget(
                marginTop: 0,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(flex: 2, child: BalanceWidget()),
                    Expanded(flex: 2, child: AnimatedPieChart())
                  ],
                ),
              ),
              DefaultContainerWidget(
                widget: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Services',
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
                            InkWell(
                              onTap: () => navigator(context, WalletPage()),
                              child: ServiceContainerWidget(
                                containerColor: 0xFFF3F6FE,
                                color: 0xFF7091F5,
                                icon: Icons.account_balance_wallet,
                                iconSize: 26,
                                label: 'Wallet',
                              ),
                            ),
                            ServiceContainerWidget(
                              containerColor: 0xFFFEF9E5,
                              color: 0xFFFFC701,
                              icon: Icons.compare_arrows,
                              iconSize: 28,
                              label: 'Transfer',
                            ),
                            ServiceContainerWidget(
                              containerColor: 0xFFF0EFF4,
                              color: 0xFF22215B,
                              icon: Icons.local_offer,
                              iconSize: 26,
                              label: 'Voucher',
                            ),
                            ServiceContainerWidget(
                              containerColor: 0xFFEDFCF0,
                              color: 0xFF4DE364,
                              icon: Icons.payment,
                              iconSize: 26,
                              label: 'Bill Pay',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ServiceContainerWidget(
                              containerColor: 0xFFF0EFF4,
                              color: 0xFF22215B,
                              icon: Icons.add_shopping_cart,
                              iconSize: 26,
                              label: 'Shopping',
                            ),
                            ServiceContainerWidget(
                              containerColor: 0xFFEDFCF0,
                              color: 0xFF4DE364,
                              icon: Icons.stars,
                              iconSize: 26,
                              label: 'Reward',
                            ),
                            ServiceContainerWidget(
                              containerColor: 0xFFF3F6FE,
                              color: 0xFF7091F5,
                              icon: Icons.confirmation_number,
                              iconSize: 26,
                              label: 'Ticket',
                            ),
                            ServiceContainerWidget(
                              containerColor: 0xFFFEF9E5,
                              color: 0xFFFFC701,
                              icon: Icons.phone_android,
                              iconSize: 26,
                              label: 'Top up',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              DefaultContainerWidget(
                widget: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Spendings',
                              style: TextStyle(
                                  color: Color(0xFF22215B),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
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
                          leading: Icon(Icons.account_box, size: 50),
                          title: Text('John Smith Doe'),
                          subtitle: Text('20 March'),
                          trailing: Text('-\$50.00'),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_box, size: 50),
                          title: Text('John Smith Doe'),
                          subtitle: Text('20 March'),
                          trailing: Text('-\$50.00'),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_box, size: 50),
                          title: Text('John Smith Doe'),
                          subtitle: Text('20 March'),
                          trailing: Text('-\$50.00'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

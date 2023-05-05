import 'dart:core';
import 'dart:developer';

import 'package:d/screens/service.dart';
import 'package:d/screens/warranty.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_listtile.dart';
import '../widget/reusable_text.dart';
import 'dd_wallet.dart';
import 'my_order.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: lightColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: blackColor),
          centerTitle: true,
          title: const ReusableText(
            title: "Order Details",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              ReusableListTile(
                leading: 'assets/icons/profile.png',
                title: 'Profile',
                onTap: () {},
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/payments.png',
                title: 'Payments',
                onTap: () {},
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/wallet.png',
                title: 'DD Wallet',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return const  DdWallet();
                  },),);
                },
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/Group 7393.png',
                title: 'Warranty',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return const  Warranty();
                  },),);
                },
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/support.png',
                title: 'Support',
                onTap: () {},
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/term.png',
                title: 'Terms & services',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return const ServiceScreen();
                  },),);
                },
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/privacy.png',
                title: 'Privacy policy',
                onTap: () {},
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/language.png',
                title: 'Language',
                onTap: () {},
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/order.png',
                title: 'My Orders',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { return const MyOrder(); }),);
                },
              ),
              const Divider(),
              ReusableListTile(
                leading: 'assets/icons/logout.png',
                title: 'logout',
                onTap: () {},
                color: lightRedColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

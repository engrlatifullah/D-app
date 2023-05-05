import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/hp_services.dart';
import '../widget/reusable_text.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: lightColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: blackColor),
        centerTitle: true,
        title: const ReusableText(
          title: "Service Center",
          size: 15,
          weight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            HpServices(),
            SizedBox(height: 20,),
            HpServices(),
          ],
        ),
      ),
    ),);
  }
}



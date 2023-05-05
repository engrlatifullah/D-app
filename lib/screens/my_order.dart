import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_text.dart';
import 'order_details.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: lightColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: blackColor),
        centerTitle: true,
        title: const ReusableText(
          title: "My Orders",
          size: 15,
          weight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            itemCount: 4,
            itemBuilder: (_,index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return const OrderDetails();
              },),);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: borderColor,
                ),
              ),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ReusableText(title: "Comfort x1",weight: FontWeight.w500,),
                      ReusableText(title: "Delivered Aug 10, 2022",weight: FontWeight.w400,color: lightGreyColor,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ReusableText(title: "Delivered",weight: FontWeight.w400,color: lightGreenColor,),
                      ReusableText(title: "QAR-54.00",weight: FontWeight.w600,),
                    ],
                  ),
                ],
              ),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 20,); },),
      ),
    ),);
  }
}

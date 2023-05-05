import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_text.dart';
class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
          const ReusableText(title: "Order Category",weight: FontWeight.w500,),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: borderColor),
            ),
            child: Row(
              children: [
                Image.asset("assets/images/vebg.png"),
                const SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableText(title: "Comfort x1",weight: FontWeight.w500,),
                          ReusableText(title: "Delivered Aug 10, 2022",weight: FontWeight.w500,color: lightGreyColor,size: 10,),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableText(title: "ERQDD09890",weight: FontWeight.w400,),
                          ReusableText(title: "QAR-54.00",weight: FontWeight.w600,),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const ReusableText(title: "Order Summary",weight: FontWeight.w500,),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: borderColor),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(title: "Order date",weight: FontWeight.w400,),
                    ReusableText(title: "Aug 10, 2022",weight: FontWeight.w400,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(title: "Order #",weight: FontWeight.w400,),
                    ReusableText(title: "ERQDD09890",weight: FontWeight.w400,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(title: "Order status",weight: FontWeight.w400,),
                    ReusableText(title: "Delivered",weight: FontWeight.w400,color: lightGreenColor,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(title: "Order total",weight: FontWeight.w400,),
                    ReusableText(title: "QAR- 60.00",weight: FontWeight.w400,),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const ReusableText(title: "Delivery Location",weight: FontWeight.w500,),
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: borderColor),
            ),
            child: const ReusableText(
              title: "Ilyas\naj sports building ,33.room\n107,Near Al Karama fish market ,68P3+M8 Qatar",weight: FontWeight.w400,color: lightGreyColor,
            ),
          ),
        ],),
      ),
    ),);
  }
}

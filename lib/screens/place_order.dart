import 'package:d/const.dart';
import 'package:d/screens/confirm_address.dart';
import 'package:d/widget/reusable_button.dart';
import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/custom_listtile.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:dotted_border/dotted_border.dart';

import '../widget/round_card.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  bool switchValue = false;

  String masterCard = "master Card";
  String visa = "Visa";
  String wallet = "Wallet";
  String cash = "cash";
  String ? groupValue ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: lightColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: blackColor),
          centerTitle: true,
          title: const ReusableText(
            title: "Change Address",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title: "Electronics",
                size: 16,
                weight: FontWeight.w500,
                color: blackColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: borderColor,
                    ),
                  ),
                  child: Column(
                    children: const [
                      CustomListTile(),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      CustomListTile(),

                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title: "Grocery",
                size: 16,
                weight: FontWeight.w500,
                color: blackColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: borderColor,
                    ),
                  ),
                  child: Column(
                    children: const [
                      CustomListTile(),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      CustomListTile(),

                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: skyColor),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: whiteColor,
                      child: Image.asset("assets/icons/Group 67.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const ReusableText(
                                title: "Contactless Delivery",
                                weight: FontWeight.w500,
                              ),
                              const Spacer(),
                              FlutterSwitch(
                                value: switchValue,
                                onToggle: (v) {
                                  setState(() {
                                    switchValue = v;
                                  });
                                },
                                height: 25,
                                width: 50,
                              ),
                            ],
                          ),
                          const ReusableText(
                            title:
                                "We will ring the bell and leave\nthe delivery onyour doorstep",
                            weight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: buttonColor,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableText(
                            title: "Home",
                            weight: FontWeight.w500,
                          ),
                          ReusableText(
                            title: "Change",
                            weight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ReusableText(
                            title: "Muhammed Ilyas",
                            weight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ReusableText(
                            title:
                                "aj sports building ,33.room, 107,Near Al Karama fish market ,68P3+M8-Dubai,Dubai",
                            weight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ReusableText(
                            title: "+971-56-4266125",
                            weight: FontWeight.w400,
                            color: lightGreyColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DottedBorder(
                  radius: const Radius.circular(5),
                  borderType: BorderType.RRect,
                  color: borderColor,
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      ReusableText(
                        title: "Add New Address",
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      Spacer(),
                      Icon(Icons.add_box_outlined,color: buttonColor,)
                    ],
                  ),
              ),
              const SizedBox(height: 10,),

              //select payment methods
              const ReusableText(
                title: "Select Payment Method",
                size: 16,
                weight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children:  [
                  const RoundCard(image: 'assets/images/Group 69.png',),
                  const SizedBox(width: 10,),
                  const ReusableText(
                    title: "Card ending in 6785",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Radio(value: masterCard, groupValue: groupValue, onChanged: (v){
                    setState(() {
                      groupValue = v!;
                    });
                  })
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children:  [
                  const RoundCard(image: 'assets/images/Visa credit card.png',),
                  const SizedBox(width: 10,),
                  const ReusableText(
                    title: "Card ending in 2314",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Radio(value: visa, groupValue: groupValue, onChanged: (v){
                    setState(() {
                      groupValue = v!;
                    });
                  })
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children:  [
                  const RoundCard(image: 'assets/images/Wallet.png',),
                  const SizedBox(width: 10,),
                  const ReusableText(
                    title: "Pay with Wallet",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Radio(value: wallet, groupValue: groupValue, onChanged: (v){
                    setState(() {
                      groupValue = v!;
                    });
                  })
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                children:  [
                   Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.15,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: borderColor,width: 1),
                    ),
                    child: const Icon(Icons.add,color: greyColor,),
                  ),
                  const SizedBox(width: 10,),
                  const ReusableText(
                    title: "Add new Card",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios,color: greyColor,)
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                children:  [
                 const RoundCard(image: "assets/images/money.png"),
                  const SizedBox(width: 10,),
                  const ReusableText(
                    title: "Cash on Delivery",
                    weight: FontWeight.w400,
                  ),
                  const Spacer(),
                  Radio(value: cash, groupValue: groupValue, onChanged: (v){
                    setState(() {
                      groupValue = v;
                    });
                  })
                ],
              ),
              const SizedBox(height: 20,),
              DottedBorder(
                radius: const Radius.circular(10),
                borderType: BorderType.RRect,
                color: lightGreyColor,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children:  [
                      const ReusableText(
                        title: "Apply Coupon",
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 15,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor
                        ),
                        child: ReusableText(
                          title: "Apply",size: 16,
                          weight: FontWeight.w500,
                          color: whiteColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const ReusableText(
                title: "Order Summary",
                size: 16,
                weight: FontWeight.w500,
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ReusableText(
                    title: "Cart Total",
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                  ReusableText(
                    title: "QAR- 50.00",
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ReusableText(
                    title: "Discount",
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                  ReusableText(
                    title: "QAR 10.00",
                    size: 16,
                    color: lightGreenColor,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ReusableText(
                    title: "Shipping Fee",
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                  ReusableText(
                    title: "FREE",
                    size: 16,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ReusableText(
                    title: "Order total",
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                  ReusableText(
                    title: "QAR- 60.00",
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              ReusableButton(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return const ConfirmAddress();
                },),);
              }, title: "Place Order"),
              const SizedBox(height: 10,),











              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:d/widget/reusable_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_text.dart';
import 'choose_location.dart';

class ConfirmAddress extends StatelessWidget {
  const ConfirmAddress({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: buttonColor,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Row(
                            children: const [
                              Expanded(
                                  flex: 3,
                                  child: ReusableText(
                                    title: "Name",
                                    weight: FontWeight.w400,
                                    color: lightGreyColor,
                                  )),
                              Expanded(
                                flex: 4,
                                  child: ReusableText(
                                title: "Muhammed Ilyas",
                                weight: FontWeight.w400,
                              )),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                  flex: 3,
                                  child: ReusableText(
                                    title: "Address",
                                    weight: FontWeight.w400,
                                    color: lightGreyColor,
                                  )),
                              Expanded(
                                flex: 4,
                                  child: ReusableText(
                                title: "aj sports building ,33.room 107,Near Al Karama fishmarket ,68P3+M8-Dubai,Dubai",
                                weight: FontWeight.w400,
                              )),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(

                            children: const [
                              Expanded(
                                  flex: 3,
                                  child: ReusableText(
                                    title: "Mobile Number",
                                    weight: FontWeight.w400,
                                    color: lightGreyColor,
                                  )),
                              Expanded(
                                flex: 4,
                                  child: ReusableText(
                                title: "+971-56-4266125",
                                weight: FontWeight.w400,
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: borderColor,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Row(
                            children: const [
                              Expanded(
                                  flex: 3,
                                  child: ReusableText(
                                    title: "Name",
                                    weight: FontWeight.w400,
                                    color: lightGreyColor,
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: ReusableText(
                                    title: "Muhammed Ilyas",
                                    weight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                  flex: 3,
                                  child: ReusableText(
                                    title: "Address",
                                    weight: FontWeight.w400,
                                    color: lightGreyColor,
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: ReusableText(
                                    title: "aj sports building ,33.room 107,Near Al Karama fishmarket ,68P3+M8-Dubai,Dubai",
                                    weight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(

                            children: const [
                              Expanded(
                                  flex: 3,
                                  child: ReusableText(
                                    title: "Mobile Number",
                                    weight: FontWeight.w400,
                                    color: lightGreyColor,
                                  )),
                              Expanded(
                                  flex: 4,
                                  child: ReusableText(
                                    title: "+971-56-4266125",
                                    weight: FontWeight.w400,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
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
                    Icon(Icons.add_box_outlined,color: lightGreyColor,)
                  ],
                ),
              ),
              const Spacer(),
              ReusableButton(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return const ChooseLocation();
                },),);
              }, title: "Confirm Address"),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

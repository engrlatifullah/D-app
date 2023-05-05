import 'package:d/const.dart';
import 'package:d/widget/reusable_button.dart';
import 'package:flutter/material.dart';

import '../widget/reusable_text.dart';
import '../widget/reusable_textfield.dart';

class LocationInformation extends StatelessWidget {
  const LocationInformation({Key? key}) : super(key: key);

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
            title: "Location Information",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ReusableText(
                        title: "Business Bay",
                        weight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ReusableText(
                        title: "Qatar",
                        weight: FontWeight.w400,
                        color: lightGreyColor,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/Rectangle 84.png'))),
                    child: const ReusableText(
                      title: "Edit",
                      color: buttonColor,
                      weight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const ReusableText(
                title: "Additional address details",
                weight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Expanded(child: ReusableTextField(hintText: "Building #",),),
                  SizedBox(width: 20,),
                  Expanded(child: ReusableTextField(hintText: "Flat",),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Expanded(child: ReusableTextField(hintText: "Street",),),
                  SizedBox(width: 20,),
                  Expanded(child: ReusableTextField(hintText: "Zone",),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableTextField(hintText: "City",),
              const Spacer(),
              ReusableButton(onTap: (){}, title: "Save Address")

            ],
          ),
        ),
      ),
    );
  }
}

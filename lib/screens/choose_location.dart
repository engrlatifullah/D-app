import 'package:d/widget/search_textfield.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/reusable_button.dart';
import '../widget/reusable_text.dart';
import 'location_information.dart';

class ChooseLocation extends StatelessWidget {
  const ChooseLocation({Key? key}) : super(key: key);

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
            title: "Change Address",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle 84.png"))),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: SearchTextField(),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.22,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableText(
                      title: "Deliver Location",
                      weight: FontWeight.w400,
                      color: lightGreyColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/icons/Group 154.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: "DEC Business Tower,Al Asayel Street",
                          weight: FontWeight.w400,
                        ),

                      ],
                    ),
                    const SizedBox(height: 20,),
                    ReusableButton(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return const LocationInformation();
                      },),);
                    }, title: 'Deliver here',)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

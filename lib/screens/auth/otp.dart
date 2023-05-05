import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';
import '../../const.dart';
import '../../widget/otp_text_field.dart';
import '../../widget/reusable_button.dart';
import '../../widget/reusable_text.dart';
import '../home_screen.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: transparentColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: blackColor),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child: Image.asset('assets/images/otp.png')),
              const SizedBox(
                height: 50,
              ),

              const ReusableText(
                title: "Verification Code",
                size: 24,
                weight: FontWeight.w600,
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tur sagittis.",
                weight: FontWeight.w400,
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              ReusableButton(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return const BottomNavBar();
                },),);
              },title: "Submit",),

            ],
          ),
        ),
      ),
    );
  }
}

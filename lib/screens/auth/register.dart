import 'package:flutter/material.dart';

import '../../const.dart';
import '../../widget/reusable_button.dart';
import '../../widget/reusable_text.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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

              Center(child: Image.asset('assets/images/register.png')),
              const SizedBox(
                height: 50,
              ),
              const ReusableText(
                title: "Register",
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
              const SizedBox(height: 80,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Full name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: "Full name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              ReusableButton(onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (_){
                //   return null;
                // },),);
              },title: "Submit",),
              const SizedBox(height: 40,),

            ],
          ),
        ),
      ),
    );
  }
}

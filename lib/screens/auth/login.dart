import 'package:d/screens/auth/otp.dart';
import 'package:d/screens/auth/register.dart';
import 'package:flutter/material.dart';

import '../../const.dart';
import '../../widget/reusable_button.dart';
import '../../widget/reusable_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child: Image.asset('assets/images/login.png')),
              const SizedBox(
                height: 50,
              ),
              const ReusableText(
                title: "Hi",
                size: 16,
                weight: FontWeight.w600,
              ),
              const ReusableText(
                title: "Welcome",
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
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 15,),
                    ReusableText(title: "+92",color: lightGreyColor,),
                    SizedBox(width: 15,),
                    SizedBox(height: 40,
                    child: VerticalDivider(color: lightGreyColor,),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: "444999958",
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              ReusableButton(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return const Otp();
                },),);
              },title: "Send Otp",),
              const SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const  ReusableText(
                    title: "Don't have an account?",
                   weight: FontWeight.w400,
                  ),
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_){
                       return const Register();
                     },),);
                   },
                   child: const ReusableText(
                     title: "Register",
                     weight: FontWeight.w400,
                     color: buttonColor,
                   ),
                 ),
               ],
             ),

            ],
          ),
        ),
      ),
    );
  }
}



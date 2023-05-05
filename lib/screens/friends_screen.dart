import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../const.dart';
import '../widget/reusable_text.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  final List<String> friendsList = [
    "Jhone Doe",
    "David",
    "Hamada",
    "Yazeed Hijazi",
    "Hamada",
    "Yazeed Hijazi",
    "Hamada",
    "",
  ];
  bool public = false;
  bool monthly = false;

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
            title: "Friends",
            size: 15,
            weight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(
                    title: "Grocery Item List",
                    weight: FontWeight.w600,
                    size: 16,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Pellentesque tur sagittis.",
                    weight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return ReusableText(
                          title: friendsList[index],
                          weight: FontWeight.w500,
                        );
                      },
                      separatorBuilder: (_, index) {
                        return const Divider(
                          height: 20,
                        );
                      },
                      itemCount: friendsList.length),
                  const SizedBox(
                    height: 10,
                  ),
                  
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: lightColor,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableText(
                          title: "See all Item Added",
                          size: 16,
                          weight: FontWeight.w500,
                        ),
                        Icon(Icons.arrow_forward_ios,color: lightGreyColor,)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const ReusableText(
                          title: "Public",
                          size: 16,
                          weight: FontWeight.w500,
                        ),
                        FlutterSwitch(
                          value: public,
                          onToggle: (v) {
                            setState(() {
                              public = v;
                            });
                          },
                          height: 25,
                          width: 50,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const ReusableText(
                          title: "Monthly",
                          size: 16,
                          weight: FontWeight.w500,
                        ),
                        FlutterSwitch(
                          value: monthly,
                          onToggle: (v) {
                            setState(() {
                              monthly = v;
                            });
                          },
                          height: 25,
                          width: 50,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableText(
                          title: "Exit Group",
                          size: 16,
                          weight: FontWeight.w500,
                          color: lightRedColor,
                        ),
                        Icon(Icons.arrow_forward_ios,color: lightGreyColor,)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableText(
                            title: "Add more Friends",
                            weight: FontWeight.w500,
                            size: 16,
                          ),
                          Icon(Icons.add_box_outlined,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableText(
                            title: "Invite Via Link",
                            weight: FontWeight.w500,
                            size: 16,
                            color: whiteColor,
                          ),
                          Icon(Icons.link,color: whiteColor,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

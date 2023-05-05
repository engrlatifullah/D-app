import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/item_card_with_border.dart';
import '../widget/item_card.dart';
import '../widget/search_textfield.dart';
import 'item_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> titles = [
    "Health & Wellness",
    "Smartphone",
    "Home Department"
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            width: mediaQuery.width,
            height: mediaQuery.height * 0.20,
            padding: const EdgeInsets.all(20),
            color: lightColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 42,
                  width: 46,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: SearchTextField(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      color: lightGreyColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ReusableText(title: "Deliver to ", color: lightGreyColor),
                    ReusableText(
                      title: "654+H3-Doha",
                      weight: FontWeight.w500,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 30,
                      color: lightGreyColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return const ItemScreen();
                          },),);
                        },
                        child: Container(
                          height: 70,
                          width: mediaQuery.width * 0.5,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/grocy.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const ReusableText(
                            title: "Grocery",
                            size: 16,
                            weight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        width: mediaQuery.width * 0.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/Group 7396.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const ReusableText(
                          title: "Home Appliance",
                          size: 16,
                          weight: FontWeight.w600,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(titles.length, (index) {
                      return Container(
                        height: 60,
                        width: mediaQuery.width * 0.4,
                        margin: const EdgeInsets.only(right: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightColor,
                        ),
                        child: ReusableText(
                          title: titles[index],
                          weight: FontWeight.w500,
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(children: [
                    Container(
                      width: mediaQuery.width * 0.8,
                      height: 170,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/buu logo.png"),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: mediaQuery.width * 0.25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: whiteColor,
                                  ),
                                  child: const ReusableText(
                                    title: "Shop Now",
                                    weight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Image.asset("assets/images/item.png"))
                        ],
                      ),
                    ),
                    Container(
                      width: mediaQuery.width * 0.8,
                      height: 170,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [blueColor, cyanColor],
                        ),
                        color: redColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const ReusableText(
                                title: "Looking\nfor More?",
                                size: 20,
                                weight: FontWeight.w700,
                                color: whiteColor,
                                fontStyle: FontStyle.italic,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: mediaQuery.width * 0.25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: whiteColor,
                                  ),
                                  child: const ReusableText(
                                    title: "Shop Now",
                                    weight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                              child:
                                  Image.asset("assets/images/Mask group.png"))
                        ],
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                    title: "Recent Orders", weight: FontWeight.w600, size: 16),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => ItemCard(
                              mediaQuery: mediaQuery,
                              image: "assets/images/clock.png",
                            )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                    title: "Top Offer", weight: FontWeight.w600, size: 16),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(2, (index) {
                      return Container(
                        width: mediaQuery.width * 0.9,
                        height: 130,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [blueColor, cyanColor],
                          ),
                          color: redColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ReusableText(
                                  title: "Up to 60% off",
                                  size: 14,
                                  weight: FontWeight.w900,
                                  color: whiteColor,
                                  fontStyle: FontStyle.italic,
                                ),
                                const ReusableText(
                                  title: "Electronics & Appliances",
                                  weight: FontWeight.w500,
                                  size: 12,
                                  color: whiteColor,
                                  fontStyle: FontStyle.italic,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: whiteColor,
                                    ),
                                    child: const ReusableText(
                                      title: "Online Exclusive Deals",
                                      weight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Image.asset("assets/images/wlo.png"))
                          ],
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                    title: "Our Popular Picks",
                    weight: FontWeight.w600,
                    size: 16),
                const SizedBox(
                  height: 10,
                ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(10, (index){
                return ItemCardWithBorder(mediaQuery: mediaQuery, image: "assets/images/1901917-01-removebg-preview 1.png",);
              }),
            ),
          )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}



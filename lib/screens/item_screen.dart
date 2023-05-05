import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/item_card.dart';
import '../widget/reusable_text.dart';
import '../widget/search_card.dart';
import '../widget/search_textfield.dart';
import 'kitchen_inventory.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  final List<String> images = [
    "assets/images/chooper.png",
    "assets/images/tvs.png",
    "assets/images/washer.png",
    "assets/images/tvs.png",
    "assets/images/chooper.png",
    "assets/images/tvs.png",
    "assets/images/washer.png",
    "assets/images/tvs.png",
  ];
  final List<String> titles = [
    "Choper","TVs","Dish Washer","TVs",
    "Choper","TVs","Dish Washer","TVs",
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
            const SearchCard(),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  3,
                  (index) {
                    return Container(
                      width: mediaQuery.width * 0.8,
                      height: 170,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: lightGreenColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const ReusableText(
                            title: "Give yourself a\ntech boost",
                            size: 20,
                            weight: FontWeight.w700,
                            color: whiteColor,
                          ),
                          Expanded(child: Image.asset("assets/images/fr.png"))
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                      title: "Popular Electronics",
                      weight: FontWeight.w600,
                      size: 16),
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
                                image: "assets/images/iron.png",
                              )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const KitchenInventory();
                      }));
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: buttonColor,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/Group 7394.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          const ReusableText(
                            title: "Kitchen Inventory",
                            weight: FontWeight.w500,
                            color: whiteColor,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward,
                            color: whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                      title: "Top Categories",
                      weight: FontWeight.w600,
                      size: 16),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                      itemCount: 8,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7
                      ),
                      itemBuilder: (_,index){
                        return Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                color: lightColor,
                                image: DecorationImage(image: AssetImage(images[index],),),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            ReusableText(title: titles[index],weight: FontWeight.w500,)
                          ],
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

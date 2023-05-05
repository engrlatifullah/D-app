import 'package:d/const.dart';
import 'package:d/screens/place_order.dart';
import 'package:d/widget/reusable_text.dart';
import 'package:d/widget/search_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widget/reusable_button.dart';
import '../widget/viewmore_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final PageController controller = PageController();
  bool overview = true;
  bool specification = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: ListView(
          children: [
            const SearchCard(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "Samsung Washer Dryer",
                    weight: FontWeight.w500,
                    color: buttonColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: "WD80TA Front Load washing machine\nO46BX/GU 8kg",
                    weight: FontWeight.w500,
                    size: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: lightColor,
                      child: Icon(
                        Icons.share,
                        color: lightGreyColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 160,
                    child: PageView(
                      controller: controller,
                      physics: const BouncingScrollPhysics(),
                      children: List.generate(
                          4,
                          (index) => Image.asset(
                              "assets/images/lllaaapp-removebg-preview 1.png")),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      axisDirection: Axis.horizontal,
                      effect: const WormEffect(
                          activeDotColor: lightGreyColor,
                          dotColor: borderColor,
                          dotHeight: 14,
                          dotWidth: 14),
                    ),
                  ),
                  const ReusableText(
                    title: "QAR 2,099.00",
                    weight: FontWeight.w400,
                    size: 16,
                  ),
                  const ReusableText(
                    title: "Only 2 left",
                    weight: FontWeight.w400,
                    size: 12,
                    color: lightRedColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: skyColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/Group 79.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        const ReusableText(
                          title: "Free home delivery by ",
                          weight: FontWeight.w500,
                          color: greyColor,
                          size: 12,
                        ),
                        const ReusableText(
                          title: "Tomorrow, Sep 8",
                          weight: FontWeight.w500,
                          color: buttonColor,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              overview = true;
                              specification = false;
                            });
                          },
                          child: const ReusableText(
                            title: "Overview",
                            weight: FontWeight.w500,
                            color: greyColor,
                            size: 16,
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              overview = false;
                              specification = true;
                            });
                          },
                          child: const ReusableText(
                            title: "Specification",
                            weight: FontWeight.w500,
                            color: greyColor,
                            size: 16,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 3,
                  color: borderColor,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 4,
                        color: overview ? buttonColor : transparentColor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 4,
                        color: specification ? buttonColor : transparentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            overview
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              title:
                                  "Helps in cleaning clothes and removing the toughest of stain with ease. Ensure you save water but detergent as well.\nAuto restart technology makes this washing machine user-friendly.",
                              size: 12,
                              weight: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: ViewMoreButton(
                                onTap: () {},
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              title: "User Review",
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const ReusableText(
                                  title: "5.0",
                                  size: 35,
                                  weight: FontWeight.w700,
                                  color: buttonColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ...List.generate(
                                    5,
                                    (index) => const Icon(
                                          Icons.star,
                                          size: 30,
                                          color: yellowColor,
                                        )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ReusableText(
                          title: "There are 2 customer ratings and 2 reviews",
                          weight: FontWeight.w400,
                          color: lightGreyColor,
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ReusableText(
                                  title: "Doodler",
                                  weight: FontWeight.w500,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    ReusableText(
                                      title: "Very fast delivery",
                                      weight: FontWeight.w400,
                                    ),
                                    Spacer(),
                                    ReusableText(
                                      title: "4.5",
                                      weight: FontWeight.w500,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.star, color: yellowColor)
                                  ],
                                ),
                                const ReusableText(
                                  title: "8 days ago",
                                  weight: FontWeight.w400,
                                  size: 12,
                                  color: lightGreyColor,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 10,
                                ),
                                const ReusableText(
                                  title: "Doodler",
                                  weight: FontWeight.w500,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    ReusableText(
                                      title: "Very fast delivery",
                                      weight: FontWeight.w400,
                                    ),
                                    Spacer(),
                                    ReusableText(
                                      title: "4.5",
                                      weight: FontWeight.w500,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.star, color: yellowColor)
                                  ],
                                ),
                                const ReusableText(
                                  title: "8 days ago",
                                  weight: FontWeight.w400,
                                  size: 12,
                                  color: lightGreyColor,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: ViewMoreButton(
                                    onTap: () {},
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: (){},
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.23,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: lightGreyColor),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        child:  Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: const [
                                            ReusableText(
                                              title: "1",
                                              weight: FontWeight.w500,

                                              size: 16,
                                            ),
                                            Icon(Icons.keyboard_arrow_down_rounded,color: lightGreyColor,)
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Expanded(child: ReusableButton(onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (_){
                                        return const PlaceOrder();
                                      },),);
                                    }, title: 'Add to Cart',)),
                                  ],
                                ),
                                const SizedBox(height: 10,),

                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

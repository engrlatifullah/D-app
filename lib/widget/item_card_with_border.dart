import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class ItemCardWithBorder extends StatelessWidget {
  const ItemCardWithBorder({
    super.key,
    required this.mediaQuery, required this.image,
  });

  final Size mediaQuery;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.height * 0.22,
      width: mediaQuery.width * 0.35,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: lightColor,)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image)),
          const SizedBox(
            height: 10,
          ),
          const ReusableText(
            title: "Downy Fabric Softener\nBukhour 3 x 1.8Litre",
            weight: FontWeight.w400,
            size: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReusableText(
                title: "QAR ",
                weight: FontWeight.w400,
              ),
              ReusableText(
                title: "77.0",
                weight: FontWeight.w700,
              ),
              Icon(
                Icons.add_box_outlined,
                color: buttonColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.mediaQuery,
    required this.image,
  });

  final Size mediaQuery;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQuery.height * 0.25,
      width: mediaQuery.width * 0.35,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: lightColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          const SizedBox(
            height: 5,
          ),
          const ReusableText(
            title: "Apple Watches\nSeries 5 GPS",
            weight: FontWeight.w500,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReusableText(
                title: "\$55.00",
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
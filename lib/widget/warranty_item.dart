import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class WarrantyItem extends StatelessWidget {
  const WarrantyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/lllaaapp-removebg-preview 1.png",
            height: 60,
            width: 60,
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableText(
                  title: "HP 15s  rYzen 3 Dual Core",
                  weight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: skyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const ReusableText(
                        title: "1 year  Onsite Warranty",
                        size: 12,
                        weight: FontWeight.w500,
                      ),),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ReusableText(
                          title: "Expire:",
                          weight: FontWeight.w400,
                          color: lightGreyColor,
                        ),
                        SizedBox(height: 10,),
                        ReusableText(
                          title: "8th Dec 2024",
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
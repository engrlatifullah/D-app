import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';
class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/chp.png"),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const ReusableText(
              title: "Impex",
              color: borderColor,
            ),
            const SizedBox(height: 10,),
            const ReusableText(
              title: "Chopper x1",
              weight: FontWeight.w500,
              color: blackColor,
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                ReusableText(
                  title: "QAR",
                  weight: FontWeight.w400,
                  color: blackColor,
                ),
                ReusableText(
                  title: "-54.00",
                  weight: FontWeight.w600,
                  color: blackColor,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: const [
                ReusableText(
                  title: "Delete",
                  color: lightGreyColor,
                ),
                SizedBox(width: 5,),
                Icon(Icons.delete_outline,color: lightGreyColor,)
              ],
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 40,
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
          ],
        )

      ],
    );
  }
}
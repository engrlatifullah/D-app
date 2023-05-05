import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';
class HpServices extends StatelessWidget {
  const HpServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child:  ListTile(
        title: const ReusableText(
          title: "HP Service",weight: FontWeight.w500,
        ),
        subtitle: const ReusableText(
          title: "Kannur",weight: FontWeight.w500,size: 12,
        ),
        trailing: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: buttonColor
          ),
          child: FittedBox(
            child: Row(
              children: const [
                Icon(Icons.phone_outlined,color: whiteColor,),
                SizedBox(width: 5,),
                ReusableText(title: "call",color: whiteColor,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
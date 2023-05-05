import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:d/const.dart';

class ViewMoreButton extends StatelessWidget {
  final VoidCallback onTap;
  const ViewMoreButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.27,
        padding: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: lightGreyColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  const [
            ReusableText(title: "View more",weight: FontWeight.w500,),
            Icon(Icons.keyboard_arrow_down_sharp,color: lightGreyColor,)
          ],
        ),
      ),
    );
  }
}
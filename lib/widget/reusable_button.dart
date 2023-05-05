import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class ReusableButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const ReusableButton({
    super.key, required this.onTap, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child:  ReusableText(
          title: title,
          color: whiteColor,
          weight: FontWeight.w500,
          size: 16,
        ),
      ),
    );
  }
}
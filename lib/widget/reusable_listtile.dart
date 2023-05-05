import 'package:d/const.dart';
import 'package:d/widget/reusable_text.dart';
import 'package:flutter/material.dart';
class ReusableListTile extends StatelessWidget {
  final String leading;
  final String title;
  final VoidCallback onTap;
  final Color color;
  const ReusableListTile({
    super.key, required this.leading, required this.title, required this.onTap,  this.color = blackColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Image.asset(leading),
        title: ReusableText(title: title,weight: FontWeight.w500,color: color,),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
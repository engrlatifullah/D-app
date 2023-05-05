import 'package:flutter/material.dart';

import '../const.dart';

class RoundCard extends StatelessWidget {
  final String image;
  const RoundCard({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.055,
      width: MediaQuery.of(context).size.width * 0.15,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor,width: 1),
      ),
      child: Image.asset(image,),
    );
  }
}
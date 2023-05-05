import 'package:d/widget/search_textfield.dart';
import 'package:flutter/material.dart';

import '../const.dart';
class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.20,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(20),
      color: lightColor,
      child: const SearchTextField(),
    );
  }
}
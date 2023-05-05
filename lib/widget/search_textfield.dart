import 'package:flutter/material.dart';
import 'package:d/const.dart';
class SearchTextField extends StatelessWidget {
  final TextEditingController ? controller;
  const SearchTextField({
    super.key, this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          hintText: "Search for products",
          contentPadding: const EdgeInsets.only(left: 10),
          prefixIcon: const Icon(Icons.search,color: blackColor,),
          suffixIcon: const Icon(Icons.mic,color: blackColor,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
import 'package:d/const.dart';
import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final TextEditingController ? controller;
  final String ? hintText;
  final TextInputType ? keyBoardType;
  const ReusableTextField({Key? key, this.controller, this.hintText, this.keyBoardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: borderColor)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: borderColor)
        ),
      ),
    );
  }
}

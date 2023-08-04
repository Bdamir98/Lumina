import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.cont,
      required this.hintText,
      this.obs = true,
      this.validator,
      this.suffIcon});
  final String hintText;
  final TextEditingController cont;
  bool obs;
  final String? Function(String?)? validator;
  final Widget? suffIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: cont,
      obscureText: obs,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color:primaryColor, width: 2),
        ),
        suffixIcon: suffIcon,
      ),
    );
  }
}

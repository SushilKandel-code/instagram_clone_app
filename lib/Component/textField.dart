import 'package:flutter/material.dart';

class TextFieldDesign extends StatelessWidget {
  final String? hintText;
  final bool obsecureText;
  final String? Function(String?)? onValidate;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  TextFieldDesign(
      {this.hintText,
      this.obsecureText = true,
      this.onValidate,
      this.keyboardType,
      this.suffixIcon,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: onValidate,
      controller: controller,
      cursorColor: Colors.black,
      obscureText: obsecureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(15),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}

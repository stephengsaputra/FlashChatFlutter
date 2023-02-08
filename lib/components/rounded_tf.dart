import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

class RoundedTF extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final bool isObscureText;
  final TextInputType keyboardType;

  RoundedTF(
      {required this.hintText,
      required this.onChanged,
      required this.isObscureText,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: TextAlign.center,
        obscureText: isObscureText,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: kTextFieldDecoration.copyWith(hintText: hintText));
  }
}

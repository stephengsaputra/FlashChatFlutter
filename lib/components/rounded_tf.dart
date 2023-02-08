import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';

class RoundedTF extends StatelessWidget {

  final String hintText;
  final Function(String) onChanged;

  RoundedTF({required this.hintText, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: kTextFieldDecoration.copyWith(hintText: hintText)
    );
  }
}
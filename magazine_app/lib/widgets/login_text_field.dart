import 'package:flutter/material.dart';
import 'package:magazine_app/constants/styles.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  const LoginTextField({
    super.key,
    this.text = "",
    required this.controller,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectStyles.textfieldpadding,
      child: TextField(
          decoration: LoginScreenStyles.logintextfieldstyle.copyWith(
        hintText: text,
      )),
    );
  }
}

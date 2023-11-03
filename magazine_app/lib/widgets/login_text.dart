import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.text, this.textStyle});
  final String text;
  final TextStyle? textStyle;
  final textpadding = const EdgeInsets.only(bottom: 20);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: textpadding,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

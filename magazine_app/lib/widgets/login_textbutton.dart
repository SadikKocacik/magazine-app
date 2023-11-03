import 'package:flutter/material.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key, this.text, this.textStyle, this.onpressed});
  final String? text;
  final TextStyle? textStyle;
  final Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(
        text!,
        style: textStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
    required this.buttonStyle,
    required this.buttonTextStyle,
    this.wbuttontext = "",
    this.onPressed,
  });
  final String wbuttontext;
  final ButtonStyle buttonStyle;
  final TextStyle buttonTextStyle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        wbuttontext,
        style: buttonTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}

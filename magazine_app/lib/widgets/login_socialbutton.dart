import 'package:flutter/material.dart';
import 'package:magazine_app/constants/styles.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, this.icon, this.color});

  final buttonpadding =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 20);

  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ProjectStyles.socialbuttonstyle.copyWith(
          padding: MaterialStatePropertyAll(buttonpadding),
        ),
        child: Icon(
          icon,
          color: color,
          size: 40,
        ));
  }
}

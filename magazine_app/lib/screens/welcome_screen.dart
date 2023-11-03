import 'package:flutter/material.dart';
import 'package:magazine_app/constants/styles.dart';

import '../widgets/welcome_button.dart';
import '../widgets/welcome_slider.dart';
import 'login_screen.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  ProjectColors colors = ProjectColors();

  static const id = 'welcome_screen';
  final String projectname = 'MAGAPP';
  final String welcometitle = 'Magazine';
  final String welcometext =
      'Discover and read popular magazines from around the world.';
  final String wbuttontext = r'''Let's Start''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.mainbg,
      body: Padding(
        padding: ProjectStyles.welcomepadding,
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  projectname,
                  style: ProjectStyles.titletextstyle,
                ),
                WelcomeSlider(),
                Text(
                  welcometitle,
                  style: ProjectStyles.welcometitletextstyle,
                ),
                Padding(
                  padding: ProjectStyles.projectpadding,
                  child: Text(
                    welcometext,
                    style: ProjectStyles.welcometextstyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                WelcomeButton(
                  buttonStyle: ProjectStyles.wbuttonstyle,
                  buttonTextStyle: ProjectStyles.wbuttontextstyle,
                  wbuttontext: wbuttontext,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

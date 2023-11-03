import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:magazine_app/constants/styles.dart';
import 'package:magazine_app/screens/login_screen.dart';
import 'package:magazine_app/screens/welcome_screen.dart';
import 'package:magazine_app/widgets/login_text.dart';
import 'package:magazine_app/widgets/login_text_field.dart';

import '../widgets/login_bar.dart';
import '../widgets/login_socialbutton.dart';
import '../widgets/welcome_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  final String name = "Your name";
  final String email = "Your e-mail adress";
  final String password = "Password";
  final String namefield = "Bünyamin Demir";
  final String emailfield = "bunyamindemir@gmail.com";
  final String passwordfield = "At least 8 characters";
  final String buttontext = "Sign Up";
  final String bartext = "Or continue with";
  final String titletext = "MAGAPP";
  final barpadding = const EdgeInsets.symmetric(horizontal: 10);
  static const id = "register_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ProjectColors().mainbg,
      body: Padding(
        padding: ProjectStyles.projectpadding,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                LoginText(
                  text: WelcomeScreen().projectname,
                  textStyle: ProjectStyles.titletextstyle,
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LoginText(
                      text: name,
                      textStyle: ProjectStyles.welcometextstyle,
                    ),
                  ],
                ),
                LoginTextField(
                  text: namefield,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LoginText(
                      text: email,
                      textStyle: ProjectStyles.welcometextstyle,
                    ),
                  ],
                ),
                LoginTextField(
                  text: emailfield,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LoginText(
                      text: password,
                      textStyle: ProjectStyles.welcometextstyle,
                    ),
                  ],
                ),
                LoginTextField(
                  text: passwordfield,
                ),
                const Spacer(
                  flex: 1,
                ),
                WelcomeButton(
                  buttonStyle: ProjectStyles.loginbuttonstyle,
                  buttonTextStyle: ProjectStyles.wbuttontextstyle
                      .copyWith(color: Colors.white),
                  wbuttontext: buttontext,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    const LoginBar(),
                    Padding(
                      padding: barpadding,
                      child: Text(
                        bartext,
                        style: ProjectStyles.wbuttontextstyle
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    const LoginBar()
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SocialButton(
                        icon: FontAwesomeIcons.google, color: Colors.white70),
                    const SocialButton(
                        icon: FontAwesomeIcons.apple, color: Colors.black),
                    SocialButton(
                        icon: FontAwesomeIcons.facebook,
                        color: Colors.blue[900]),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

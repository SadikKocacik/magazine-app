import 'package:flutter/material.dart';
import 'package:magazine_app/constants/styles.dart';
import 'package:magazine_app/screens/welcome_screen.dart';

import '../widgets/login_text.dart';
import '../widgets/login_text_field.dart';
import '../widgets/welcome_button.dart';
import 'login_screen.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});
  static const id = "forgot_screen";
  final String forgot = "Forgot";
  final String password = "Password ?";
  final String email = "Your e-mail adress";
  final String emailfield = "bunyamindemir@gmail.com";
  final String newpassword = "New password";
  final String passwordfield = "At least 8 characters";
  final String buttontext = "Reset Password";

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      forgot,
                      style: ProjectStyles.titletextstyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LoginText(
                      text: password,
                      textStyle: ProjectStyles.titletextstyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                      text: newpassword,
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
                  flex: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

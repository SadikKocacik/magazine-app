import 'package:flutter/material.dart';
import 'package:magazine_app/constants/styles.dart';
import 'package:magazine_app/screens/forgotpassword_screen.dart';
import 'package:magazine_app/screens/home_page.dart';
import 'package:magazine_app/screens/register_screen.dart';
import 'package:magazine_app/screens/welcome_screen.dart';
import 'package:magazine_app/widgets/login_bar.dart';
import 'package:magazine_app/widgets/login_text.dart';
import 'package:magazine_app/widgets/login_text_field.dart';
import 'package:magazine_app/widgets/login_textbutton.dart';
import 'package:magazine_app/widgets/welcome_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/login_socialbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  final String loghello = "Hello Again!";
  final String logexp = "Welcome back you've been missed!";
  final String emailtext = "Enter your e-mail";
  final String passwordtext = "Enter your password";
  final String lbuttontext = "Sign In";
  final String forgotpassword = "Forgot Password?";
  final String bartext = "Or continue with";
  final barpadding = const EdgeInsets.symmetric(horizontal: 10);
  final String notmember = "Not a member?";
  final String register = "Register now!";

  static const id = 'login_screen';
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
                flex: 3,
              ),
              LoginText(
                text: loghello,
                textStyle: ProjectStyles.logintitletextstyle,
              ),
              LoginText(
                text: logexp,
                textStyle: ProjectStyles.welcometextstyle,
              ),
              LoginTextField(
                text: emailtext,
              ),
              LoginTextField(
                text: passwordtext,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: ProjectStyles.textfieldpadding,
                    child: LoginTextButton(
                      onpressed: () {
                        Navigator.pushNamed(context, ForgotScreen.id);
                      },
                      text: forgotpassword,
                      textStyle: ProjectStyles.textbuttonstyle,
                    ),
                  ),
                ],
              ),
              WelcomeButton(
                buttonStyle: ProjectStyles.loginbuttonstyle,
                buttonTextStyle: ProjectStyles.wbuttontextstyle
                    .copyWith(color: Colors.white),
                wbuttontext: lbuttontext,
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
              ),
              const Spacer(flex: 3),
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
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SocialButton(
                      icon: FontAwesomeIcons.google, color: Colors.white70),
                  const SocialButton(
                      icon: FontAwesomeIcons.apple, color: Colors.black),
                  SocialButton(
                      icon: FontAwesomeIcons.facebook, color: Colors.blue[900]),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notmember,
                    style: ProjectStyles.wbuttontextstyle
                        .copyWith(color: Colors.white),
                  ),
                  LoginTextButton(
                    onpressed: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    text: register,
                    textStyle: ProjectStyles.wbuttontextstyle.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}

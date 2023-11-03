import 'package:flutter/material.dart';
import 'package:magazine_app/screens/forgotpassword_screen.dart';
import 'package:magazine_app/screens/home_page.dart';
import 'package:magazine_app/screens/login_screen.dart';
import 'package:magazine_app/screens/register_screen.dart';
import 'package:magazine_app/screens/welcome_screen.dart';

void main() {
  runApp(const Magapp());
}

class Magapp extends StatelessWidget {
  const Magapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: WelcomeScreen.id,
        debugShowCheckedModeBanner: false,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          RegisterScreen.id: (context) => const RegisterScreen(),
          ForgotScreen.id: (context) => const ForgotScreen(),
          HomePage.id: (context) => const HomePage(),
        });
  }
}

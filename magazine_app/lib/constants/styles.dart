import 'package:flutter/material.dart';

class ProjectColors {
  final mainbg = const Color.fromRGBO(117, 117, 117, 1.0);
  final slideractivecolor = const Color.fromRGBO(217, 217, 217, 1.0);
  final loginbuttoncolor = const Color.fromRGBO(73, 73, 73, 1.0);
}

class ProjectStyles {
  static const titletextstyle = TextStyle(color: Colors.white, fontSize: 45);
  static const welcometitletextstyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800);
  static const welcometextstyle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500);
  static const wbuttontextstyle = TextStyle(
    color: Colors.black,
    fontSize: 20,
  );
  static const logintitletextstyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  static final wbuttonstyle = ElevatedButton.styleFrom(
    backgroundColor: ProjectColors().slideractivecolor,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  );

  static final socialbuttonstyle = ElevatedButton.styleFrom(
    backgroundColor: ProjectColors().slideractivecolor,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  );

  static final loginbuttonstyle = ElevatedButton.styleFrom(
    backgroundColor: ProjectColors().loginbuttoncolor,
    foregroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  );

  static const welcomepadding = EdgeInsets.only(bottom: 40);

  static const projectpadding =
      EdgeInsets.symmetric(vertical: 10, horizontal: 35);

  static const textfieldpadding = EdgeInsets.only(bottom: 20);

  static const textbuttonstyle = TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
}

class LoginScreenStyles {
  static final logintextfieldstyle = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    filled: true,
    fillColor: ProjectColors().slideractivecolor,
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(24))),
  );
}

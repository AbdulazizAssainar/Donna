// ignore_for_file: prefer_const_constructors

import 'package:donna/Cafe-Restaurant/home.dart';
import 'package:donna/class/package.dart';
import 'package:donna/class/theme.dart';
import 'package:donna/class/widgets.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    appWindow.maximize();
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return materialApp(
      const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: const Color(0xffDEDEDE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 70,
                color: Color.fromARGB(255, 84, 78, 80),
                fontFamily: "Segoe UI",
                fontWeight: FontWeight.w700,
              ),
            ),
            padding(40, 0, 0, 0),
            maintextfield(
                screenwidth * 0.2, 'Username', Color(0x80ffffff), false),
            padding(10, 0, 0, 0),
            maintextfield(
                screenwidth * 0.2, 'Password', Color(0x80ffffff), true),
            padding(20, 0, 0, 0),
            button(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CRHomePage()),
              );
            }, true, "LOGIN", false, ""),
          ],
        ),
      ),
    );
  }
}

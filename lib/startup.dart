// ignore_for_file: unused_local_variable, unnecessary_import, prefer_const_constructors, unused_import

import 'dart:io';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import '/package.dart';
import 'Cafe-Restaurant/home.dart';
import 'login.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'voids.dart';

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
      const StartupPage(),
    );
  }
}

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;

    loadprograminfo();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CRHomePage()),
      );
    });

    return Material(
      child: Container(
        color: outerbodybg,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 84, 78, 80),
                fontFamily: "Segoe UI",
                fontWeight: FontWeight.w100,
              ),
            ),
            padding(100, 0, 0, 0),
            Image.asset(
              'assets/images/donna-logo.png',
              width: 0.2 * screenwidth,
            ),
            padding(100, 0, 0, 0),
            Text(
              settingup,
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 84, 78, 80),
                fontFamily: "Segoe UI",
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

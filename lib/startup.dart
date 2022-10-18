// ignore_for_file: prefer_const_constructors, unused_import

import 'package:donna/Cafe-Restaurant/home.dart';
import 'package:donna/class/artboard.dart';
import 'package:donna/class/package.dart';
import 'package:donna/class/theme.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'class/voids.dart';

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
    return MaterialApp(themeMode: ThemeMode.light, home: StartupPage());
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
    appTheme = ThemeMode.light;
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
                fontSize: 14,
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

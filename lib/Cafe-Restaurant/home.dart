// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:donna/class/package.dart';
import 'package:donna/class/sidebar.dart';
import 'package:donna/class/theme.dart';
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
    return materialApp(CRHomePage());
  }
}

class CRHomePage extends StatefulWidget {
  const CRHomePage({super.key});

  @override
  State<CRHomePage> createState() => _CRHomePageState();
}

class _CRHomePageState extends State<CRHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          body(
              Column(
                children: [
                  sidebaricon("Donna", "assets/icons/business_letter_bg.svg",
                      "D", 30, Color(0xff852856), Color(0x00000000), 20, () {}),
                  padding(15, 0, 0, 0),
                  sidebaricon("Sales", "assets/icons/home.svg", "", 20,
                      sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon("Receipts", "assets/icons/receipt_long.svg", "",
                      20, sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon(
                      "Return/Lost",
                      "assets/icons/assignment_returned.svg",
                      "",
                      20,
                      sidebarIconsColor,
                      shadowColor,
                      20,
                      () {}),
                  sidebaricon(
                      "Manager",
                      "assets/icons/admin_panel_settings.svg",
                      "",
                      20,
                      sidebarIconsColor,
                      shadowColor,
                      20,
                      () {}),
                ],
              ),
              Column(
                children: [
                  sidebaricon("Person", "assets/icons/person.svg", "", 20,
                      sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon("Settings", "assets/icons/settings.svg", "", 20,
                      sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon("Log out", "assets/icons/logout.svg", "", 20,
                      sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon("Close", "assets/icons/close.svg", "", 20,
                      sidebarIconsColorActive, shadowColor, 0, () {})
                ],
              ),
              Column(
                children: [
                  sidebaricon(
                      "Donna",
                      "assets/icons/business_letter_bg.svg",
                      "D",
                      30,
                      sidebarIconsColorActive,
                      Color(0x00000000),
                      20,
                      () {}),
                  padding(15, 0, 0, 0),
                  sidebaricon("Sales", "assets/icons/home.svg", "", 20,
                      sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon("Receipts", "assets/icons/receipt_long.svg", "",
                      20, sidebarIconsColor, shadowColor, 20, () {}),
                  sidebaricon(
                      "Return/Lost",
                      "assets/icons/assignment_returned.svg",
                      "",
                      20,
                      sidebarIconsColor,
                      shadowColor,
                      20,
                      () {}),
                  sidebaricon(
                      "Manange",
                      "assets/icons/admin_panel_settings.svg",
                      "",
                      20,
                      sidebarIconsColor,
                      shadowColor,
                      20,
                      () {}),
                ],
              ),
              Column(
                children: [],
              ),
              true,
              Row(),
              Row()),
        ],
      ),
    );
  }
}

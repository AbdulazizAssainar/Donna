// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:io';

import 'package:donna/Cafe-Restaurant/inventory.dart';
import 'package:donna/Cafe-Restaurant/sales.dart';
import 'package:donna/class/package.dart';
import 'package:donna/class/voids.dart';
import 'package:donna/Widgets/sidebar.dart';
import 'package:donna/class/theme.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    //appWindow.maximize();
    //appWindow.show();
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

class _CRHomePageState extends State<CRHomePage>
    with SingleTickerProviderStateMixin {
  bool isVisible = true;
  boolvisible() {
    setState((() => isVisible = !isVisible));
  }

  static List<Tab> myTabs = <Tab>[
    crSalesTab(),
    crInventoryTab(),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      Stack(children: [
        Visibility(
          visible: isVisible,
          child: sidebar(
              Column(
                children: [
                  sidebaricon("Donna", "assets/icons/business_letter_bg.svg",
                      "D", 30, Color(0xff852856), 20, () {}),
                  padding(15, 0, 0, 0),
                  sidebaricon("Sales", "assets/icons/home.svg", "", 20,
                      sidebarIconsColorActive, 20, () {
                    _tabController.animateTo(0);
                  }),
                  sidebaricon(
                      "Inventort",
                      "assets/icons/assignment_returned.svg",
                      "",
                      20,
                      sidebarIconsColor,
                      20, () {
                    _tabController.animateTo(1);
                  }),
                ],
              ),
              Column(
                children: [
                  sidebaricon("Close", "assets/icons/close.svg", "", 20,
                      sidebarIconsColorActive, 0, () {})
                ],
              )),
        ),
      ]),
      SizedBox(
          width: screenwidth * 0.8,
          child: Scaffold(
            body: TabBarView(
              controller: _tabController,
              children: myTabs,
            ),
          ))
    ]));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last

import 'package:donna/Cafe-Restaurant/inventory.dart';
import 'package:donna/Cafe-Restaurant/sales.dart';
import 'package:donna/Widgets/VerticalTabs.dart';
import 'package:donna/class/package.dart';
import 'package:donna/class/voids.dart';
import 'package:donna/class/sidebar.dart';
import 'package:donna/class/theme.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

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

class _CRHomePageState extends State<CRHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: VerticalTabs(tabsWidth: screenwidth * 0.2, tabs: <Tab>[
      Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
      Tab(child: Text('Dart')),
    ], contents: <Widget>[
      Text("data"),
      Text("data"),
    ]));
  }
}

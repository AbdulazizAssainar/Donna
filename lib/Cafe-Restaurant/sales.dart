// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last

import 'package:donna/Cafe-Restaurant/home.dart';
import 'package:donna/Cafe-Restaurant/inventory.dart';
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
    return materialApp(CRSalesPage());
  }
}

class CRSalesPage extends StatefulWidget {
  const CRSalesPage({super.key});

  @override
  State<CRSalesPage> createState() => _CRSalesPageState();
}

class _CRSalesPageState extends State<CRSalesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}

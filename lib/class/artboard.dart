// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last

import 'package:donna/Widgets/VerticalTabs.dart';
import 'package:donna/class/package.dart';
import 'package:donna/class/sidebar.dart';
import 'package:donna/class/theme.dart';
import 'package:donna/class/widgets.dart';
import 'package:donna/class/voids.dart';
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
    return materialApp(const ArtboardPage());
  }
}

class ArtboardPage extends StatefulWidget {
  const ArtboardPage({super.key});

  @override
  State<ArtboardPage> createState() => _ArtboardPageState();
}

class _ArtboardPageState extends State<ArtboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: VerticalTabs(
        tabsWidth: screenwidth * 0.2,
        tabs: <Tab>[
          Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
          Tab(child: Text('Dart')),
          Tab(child: Text('NodeJS')),
          Tab(child: Text('PHP')),
          Tab(child: Text('HTML 5')),
        ],
        contents: <Widget>[
          Container(child: Text('Flutter'), padding: EdgeInsets.all(20)),
          Container(child: Text('Dart'), padding: EdgeInsets.all(20)),
          Container(child: Text('NodeJS'), padding: EdgeInsets.all(20)),
          Container(child: Text('PHP'), padding: EdgeInsets.all(20)),
          Container(child: Text('HTML 5'), padding: EdgeInsets.all(20))
        ],
      ),
    );
  }
}

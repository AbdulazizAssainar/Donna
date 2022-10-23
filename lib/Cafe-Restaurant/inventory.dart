// ignore_for_file: prefer_const_constructors

import 'package:donna/class/package.dart';
import 'package:flutter/material.dart';

Tab crInventoryTab() {
  return Tab(child: CRInventoryPage());
}

class CRInventoryPage extends StatefulWidget {
  const CRInventoryPage({super.key});

  @override
  State<CRInventoryPage> createState() => _CRInventoryPageState();
}

class _CRInventoryPageState extends State<CRInventoryPage>
    with SingleTickerProviderStateMixin {
  bool isVisible = true;
  boolvisible() {
    setState((() => isVisible = !isVisible));
  }

  static List<Tab> myTabs = <Tab>[
    Tab(child: Text('data')),
    Tab(child: Text('data')),
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
    return Scaffold(body: SizedBox(width: screenwidth * 0.8, child: Row()));
  }
}

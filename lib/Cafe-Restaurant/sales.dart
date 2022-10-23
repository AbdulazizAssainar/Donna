// ignore_for_file: prefer_const_constructors

import 'package:donna/Widgets/sidebar.dart';
import 'package:donna/class/package.dart';
import 'package:flutter/material.dart';

Tab crSalesTab() {
  return Tab(child: CRSalesTabPage());
}

class CRSalesTabPage extends StatefulWidget {
  const CRSalesTabPage({super.key});

  @override
  State<CRSalesTabPage> createState() => _CRSalesTabPageState();
}

class _CRSalesTabPageState extends State<CRSalesTabPage>
    with SingleTickerProviderStateMixin {
  bool isVisible = true;
  boolvisible() {
    setState((() => isVisible = !isVisible));
  }

  static List<Tab> myTabs = <Tab>[
    Tab(child: Text('DISHES')),
    Tab(child: Text('DRINKS')),
    Tab(child: Text('SNACKS')),
    Tab(child: Text('DESSERTS')),
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
        body: SizedBox(
            width: screenwidth * 0.8,
            child: Wrap(
              children: [
                topbar(
                  Row(
                    children: [
                      topbaricon('DISHES', 'assets/icons/summarize.svg', '', 0,
                          Colors.black, 0, () {
                        _tabController.animateTo(0);
                      }),
                      topbaricon('DRINKS', 'assets/icons/summarize.svg', '', 0,
                          Colors.black, 0, () {
                        _tabController.animateTo(1);
                      }),
                      topbaricon('SNACKS', 'assets/icons/summarize.svg', '', 0,
                          Colors.black, 0, () {
                        _tabController.animateTo(2);
                      }),
                      topbaricon('DESSERTS', 'assets/icons/summarize.svg', '',
                          0, Colors.black, 0, () {
                        _tabController.animateTo(3);
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.8,
                  child: Scaffold(
                    body: TabBarView(
                      controller: _tabController,
                      children: myTabs,
                    ),
                  ),
                ),
              ],
            )));
  }
}

// ignore_for_file: library_private_types_in_public_api, unnecessary_this, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, use_key_in_widget_constructors

import 'package:donna/db/main_Database.dart';
import 'package:donna/model/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainsPage extends StatefulWidget {
  @override
  _MainsPageState createState() => _MainsPageState();
}

class _MainsPageState extends State<MainsPage> {
  late List<Main> mains;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshMains();
  }

  @override
  void dispose() {
    MainsDatabase.instance.close();

    super.dispose();
  }

  Future refreshMains() async {
    setState(() => isLoading = true);

    this.mains = await MainsDatabase.instance.readAllMains();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Mains',
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.search), SizedBox(width: 12)],
        ),
        body: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : mains.isEmpty
                  ? Text(
                      'No Mains',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )
                  : buildMains(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: () async {},
        ),
      );

  Widget buildMains() => StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: mains.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final main = mains[index];
          return buildMains();
        },
      );
}

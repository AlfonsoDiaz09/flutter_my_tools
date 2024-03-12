
import 'package:flutter/material.dart';
import 'package:flutter_my_tools/src/utils/drawer_items.dart';
import 'package:flutter_my_tools/src/widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final List<MyItems> myBody = DrawerItems().items;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: Text(
          myBody[index].title
        ),
        centerTitle: true,
      ),
      drawer: MyDrawer(
        cIndex: (i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: myBody[index].route,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_my_tools/src/utils/drawer_items.dart';
import 'package:flutter_my_tools/src/widgets/my_drawerheader.dart';

class MyDrawer extends StatelessWidget {
  final void Function(int) cIndex;
  const MyDrawer({super.key, required this.cIndex});

  @override
  Widget build(BuildContext context) {
    List<MyItems> itemsList = DrawerItems().items;

    return Drawer(
      width: 250.0,
      backgroundColor: Colors.grey[50],
      shape: const Border(
        right: BorderSide(
          color: Colors.blue,
          width: 2.0,
        )
      ),
      child: ListView(
        children: [

          const MyDrawerHeader(),

          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: itemsList.length,
            itemBuilder: (context, i) {
              return ListTile(
                dense: true,
                horizontalTitleGap: 8.0,
                minLeadingWidth: 20.0,
                leading: Icon(
                  itemsList[i].icon,
                  size: 35.0,
                ),
                title: Text(itemsList[i].title),
                subtitle: Text(itemsList[i].subTitle),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20.0,
                ),
                onTap: () {
                  cIndex(i);
                  Navigator.pop(context);
                },
              );
            }
          )
        ],
      ),
    );
  }
}

class MyItems {

  String title;
  IconData icon;
  String subTitle;
  Widget route;

  MyItems({
    required this.title, 
    required this.icon, 
    required this.subTitle,
    required this.route,
  });
  
}
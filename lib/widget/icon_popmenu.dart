
import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class PopupMenu extends StatelessWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
        onSelected: (choice) async {
          // switch (choice) {
          //   case Menu.itemOne:
          //     // return await instance.signOut();
          // }
        },
        color: Colors.black87,
        itemBuilder: (BuildContext context) =>
        <PopupMenuEntry<Menu>>[
          const PopupMenuItem<Menu>(
              value: Menu.itemOne,
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.lime),
                title: Text(
                  'Home', style: TextStyle(color: Colors.limeAccent),),
              )
          ),
          const PopupMenuItem<Menu>(
              value: Menu.itemTwo,
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.lime),
                title: Text(
                    'Setting', style: TextStyle(color: Colors.limeAccent)),
              )
          ),
          const PopupMenuItem<Menu>(
              value: Menu.itemFour,
              child: ListTile(
                leading: Icon(
                    Icons.person_rounded, color: Colors.blue),
                title: Text('Profile', style: TextStyle(color: Colors.blue)),
              )
          ),
        ]
    );
  }
}
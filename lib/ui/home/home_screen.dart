import 'package:flutter/material.dart';
import 'package:todo/ui/home/settings/setting_Tab.dart';
import 'package:todo/ui/home/tasks-list/tasks_List.dart';

class homeScreen extends StatefulWidget{
  static const String routName='homeScreen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndexTab=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4
          )
        ),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex:selectedIndexTab ,
          onTap: (index){

            setState(() {
              selectedIndexTab=index;
            });
          },

          items: [

          BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
        ],

        ),
      ),
      body:tabs[selectedIndexTab] ,


   );
  }
  var tabs=[tasks_List(),settingTab()];
}
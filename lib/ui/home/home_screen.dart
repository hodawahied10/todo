import 'package:flutter/material.dart';
import 'package:todo/add_task.dart';
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
      floatingActionButton: FloatingActionButton(onPressed: (){

        showaddTaskBottomSheet();
      },
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
        notchMargin: 10,
          child: BottomNavigationBar(
            currentIndex:selectedIndexTab ,
            onTap: (index){
          
              setState(() {
                selectedIndexTab=index;
              });
            },
          
            items:const [
          
            BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: '')
          ],
          
          ),

      ),
      body:tabs[selectedIndexTab] ,


   );
  }
  var tabs=[tasks_List(),settingTab()];

  void showaddTaskBottomSheet() {
    showModalBottomSheet(context: context, builder: (buildeConterxt){
     return addTask();
    });
  }

}
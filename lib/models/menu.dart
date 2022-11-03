// ignore_for_file: non_constant_identifier_names
/*
import 'package:emedical/models/my_hearder_drawer.dart';
import 'package:flutter/material.dart';*/

/*void main(List<String> args) {
  runApp(Menu());
}*/
/*
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var currentPage = DrawerSections.dashboard; 
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage == DrawerSections.dashboard){
      container==DashboardPage();
    }
     if(currentPage == DrawerSections.contacts){
      container==ContactsPage();
    }
     if(currentPage == DrawerSections.settings){
      container==SettingsPage();
    }
     if(currentPage == DrawerSections.send_feedback){
      container==SendFeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("goog app"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
          ),
        ),
      ),
    );
  }
}

class MyDrawerList(){
  return Container(
    padding: EdgetInsets.only(top: 15.0),
    child: Column(
      children:[
        MenuItem(1,"dashboard",Icons.dashboard_outlined,
          currentPage == DrawerSections.dashboard ? true: false),
        MenuItem(2,"Contacts",Icons.people_all_outlined,
          currentPage == DrawerSections.contacts ? true: false),
        MenuItem(3,"Settings",Icons.settings_outlined,
          currentPage == DrawerSections.settings ? true: false),
        MenuItem(2,"Send feedkback",Icons.feedback_outlined,
          currentPage == DrawerSections.send_feedback ? true: false),
      ],
      MenuItem(),
    ),
  ),
}

Widget MenuItem(int id, String title, IconData icon, bool selected){
  return Material(
    color: selected ? Colors.grey[600] : Colors.transparent,
    child: InkWell(
      onTap: (){
       // BuildContext context;
        Navigator.pop(context);
        setState(() {
          if(id==1){
            curentPage == DrawerSections.dashboard;
          } 
          else if(id==2){
            curentPage == DrawerSections.contacts;
          }
          else if(id==3){
            curentPage == DrawerSections.settings;
          }
          else if(id==4){
          curentPage == DrawerSections.send_feeback;
        }
        });
       
      },
      child: Padding(padding: EdgeInsets.all(15.0),
    child: Row(
      children: [
        Expanded(
          child: Icon(
            icon,
            size: 20.0,
            color: Colors.black,
            ),
            ),
            Expanded(
              flex: 3,
              child: Text(title, style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
            )
      ],
    ),
    ),
    ),
  );
}
*/
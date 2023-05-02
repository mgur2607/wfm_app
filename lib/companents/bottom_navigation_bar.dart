import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constance/project_colors.dart';
import '../constance/project_ints.dart';
import '../constance/project_strings.dart';
import '../screens/airport_info.dart';
import '../screens/arrival_page_view.dart';
import '../screens/departure_page_view.dart';
import '../screens/my_plan_page_view.dart';
import '../screens/otopark_page_view.dart';
import '../screens/work_flow_page_view.dart';
import '../screens/work_page.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;

  @override
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    AirPortInfoPageView(),
    WorkPageView(),
    MyPlanPageView(),
    WorkFlowPageView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ProjectColors().textColorWhite,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItem0,
              icon: Icon(Icons.flight_takeoff)),
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItom1,
              icon: Icon(Icons.storage_outlined)),
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItem2,
              icon: Icon(Icons.work_history_outlined)),
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItem3,
              icon: Icon(Icons.view_timeline_outlined))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ProjectColors().appBarColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

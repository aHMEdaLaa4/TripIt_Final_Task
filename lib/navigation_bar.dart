import 'package:flutter/material.dart';
import 'package:untitled27/calendar.dart';
import 'package:untitled27/tours.dart';

import 'favourite.dart';
import 'location.dart';
import 'notification.dart';

class NaviBarScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<NaviBarScreen> {
  int _currentIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    LocationScreen(),
    FavouriteScreen(),
    ToursScreen(),
    CalendarScreen(),
    notificationScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset("assets/images/home.png")),label: ''),
          BottomNavigationBarItem(icon: Container(child: Image.asset("assets/images/heart.png")),label: ''),
          BottomNavigationBarItem(icon: Image.asset("assets/images/Suitcase.png"),label: ''),
          BottomNavigationBarItem(icon: Image.asset("assets/images/Calendar.png"),label: ''),
          BottomNavigationBarItem(icon: Container(child: Image.asset("assets/images/avatar.png")),label: ''),
        ],
        currentIndex: _currentIndex ,
        onTap: _ChangeItem,
      ),
    );
  }

  void _ChangeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
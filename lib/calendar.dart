import 'package:flutter/material.dart';


class CalendarScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ Color(0xFF4458DB), Color(0xFFB444DB)])),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Calendar page",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w900,fontSize: 30,fontStyle: FontStyle.italic),),
              Text("Coming soon....",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w900,fontSize: 30,fontStyle: FontStyle.italic),),
            ],
          ),
        ),

      ),

    );
  }
}
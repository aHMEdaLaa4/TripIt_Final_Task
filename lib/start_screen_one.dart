import 'package:flutter/material.dart';
class StartScreen1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<StartScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/LogoColor2.png")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Image.asset("assets/images/VectorImage1.png",width: 392)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Plan Your Trip",style: TextStyle(fontSize:23,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Plan your trip, choose your destination. ",
                  style: TextStyle(fontSize:12,
                      color: Colors.grey),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" Pick the best place for your holiday.",
                  style: TextStyle(fontSize:12,
                      color: Colors.grey),),
              ],
            ),
          ),

        ],
      ),


    );
  }
}

import 'package:flutter/material.dart';
class StartScreen2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<StartScreen2> {
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
                Image.asset("assets/images/VectorImage2.png",width: 392)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Select The Date",style: TextStyle(fontSize:23,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Select the day, book your ticket. ",
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
                Text(" We give you the best price. We guarantied!",
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

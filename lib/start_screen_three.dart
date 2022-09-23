import 'package:flutter/material.dart';
class StartScreen3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<StartScreen3> {
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
                Image.asset("assets/images/VectorImage3.png",width: 392)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enjoy Your Trip",style: TextStyle(fontSize:23,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enjoy your holiday! don't forget to take  ",
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
                Text(" a photo and share to the world",
                  style: TextStyle(fontSize:12,
                      color: Colors.grey),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(" Let's Go!",
                      style: TextStyle(fontSize:16,
                          color: Color(0xFF4458DB),fontWeight: FontWeight.normal)),
                ),
              ],
            ),
          ),
        ],
      ),


    );
  }
}

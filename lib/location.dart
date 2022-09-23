import 'package:flutter/material.dart';
import 'package:untitled27/tours.dart';

import 'favourite.dart';
import 'notification.dart';

class LocationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>notificationScreen()));
                    },
                    child: Container(child: Image.asset("assets/images/SideManuArrow.png"))),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Text("Location",style: TextStyle(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic,fontSize: 25,color: Colors.black),),
                )
              ],

            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/Location1.png"),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ToursScreen()));

                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/images/Location2.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/Location3.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/Location4.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/Location5.png"),
              ),
            ],
          )


        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:untitled27/calendar.dart';
import 'package:untitled27/tours.dart';

import 'favourite.dart';
import 'location.dart';
import 'notification.dart';

class disneylandScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<disneylandScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen()));

            },
            child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/images/home.png")),
          ),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteScreen()));

              },
              child: Container(child: Image.asset("assets/images/heart.png"))),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ToursScreen()));
              },
              child: Image.asset("assets/images/Suitcase.png")),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CalendarScreen()));

              },child: Image.asset("assets/images/Calendar.png")),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>notificationScreen()));

              },
              child: Container(child: Image.asset("assets/images/avatar.png"))),label: ''),
        ],
        currentIndex: _currentIndex ,
        onTap: _ChangeItem,
      ),
    body:
    ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Image.asset("assets/images/next.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Back",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text("Paris",style: TextStyle(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic,fontSize: 25,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 115),
                child: Image.asset("assets/images/searching_glass.png"),
              ),

            ],

          ),
        ),
        Stack(
          alignment: AlignmentDirectional.topCenter,

          children: [
            Image.asset("assets/images/Mask  Image.png"),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Column(
                children: [
                  Text("Top 10 Favourite",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30,color: Colors.white)),
                  Text("Destination In Paris",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 30,color: Colors.white)),
                ],
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(top: 100),

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset("assets/images/IMG 01.png"),
                  Image.asset("assets/images/IMG 02.png"),
                  Image.asset("assets/images/IMG 03.png"),
                ],

              ),
            ),


          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Disneyland Paris",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25,color: Colors.black),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Departure",style: TextStyle(fontWeight:FontWeight.w500)),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text("23rd Oct 2017",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Duration",style: TextStyle(fontWeight:FontWeight.w500)),

                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Text("5 Days / 4  Nights",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
                ],),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Discover 7 World Heritage Sites in this tour.",
                        style: TextStyle(fontWeight:FontWeight.w500)),

                ],),
              ),
              Row(children: [
                Text("Fans of Mickey can visit Disneyland Paris which is",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
              ],),
              Row(children: [
                Text("located 32 km from central Paris, with connection ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
              ],),
              Row(children: [
                Text("to the suburban RER A.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
              ],),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(children: [
                  Text("Disneyland Paris has two theme parks: Disneyland ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
                ],),
              ),
              Row(children: [
                Text("(with Sleeping Beauty's castle) and Walt Disney ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
              ],),
              Row(children: [
                Text("Studios. Top attractions are Space Mountain, It's a ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
              ],),
              Row(children: [
                Text("Small World and Big Thunder Mountain.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
              ],),
            ],
          ),
        )

    ],
        
    ),
    
    );


  }

  void _ChangeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
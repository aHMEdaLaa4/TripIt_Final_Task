import 'package:flutter/material.dart';

import 'favourite.dart';
import 'location.dart';

class notificationScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<notificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 28.0,top: 80),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen()));
                    },
                    child: Image.asset("assets/images/cancel.png")),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset("assets/images/IMG.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 90,top: 8),
                  child: Row(
                    children: [
                      Text("Kenneth Gutierrez",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20)),

                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Row(children: [
                    Text("Kenneth_gutierrez@gmail.com",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),)
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Notification.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Notification",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("04",style: TextStyle(color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Tours.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Tours",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 258),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Location.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Location",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 235),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Language.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Language",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 228),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Invite Friends.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Invite Friends",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 202),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Image.asset("assets/images/Line.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Help Center.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Help Center",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 213),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Setting.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Setting",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 245),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Log Out.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Log Out",style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240),
                        child: Image.asset("assets/images/Icon.png"),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )

        ],
      ),


    );


  }

}
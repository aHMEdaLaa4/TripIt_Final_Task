import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'disneyland.dart';
import 'favourite.dart';
import 'location.dart';
import 'model/places_response.dart';
import 'notification.dart';

class ToursScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<ToursScreen> {
  dynamic ToursResponse;
  String access_token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM4MDE3MjMsIm5iZiI6MTY2MzgwMTcyMywianRpIjoiOFhEc1M1T3h5dG5EQmZLTiIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rX3s6YRH7JVKt8CbHBBr1pXwfm1SA7yS7BeHTIQU0oc";
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                  padding: const EdgeInsets.only(left: 130),
                  child: Text("Tours",style: TextStyle(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic,fontSize: 25,color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 115),
                  child: Image.asset("assets/images/searching_glass.png"),
                ),

              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
            child: Row(
              children: [
                Text( "Popular Destination",style: TextStyle(color: Color(0xff4458DB),
                    fontWeight: FontWeight.w400,
                fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text("10 Tours Avialable",style: TextStyle(
                  color: Colors.black,
                fontWeight: FontWeight.w400),)
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView(
               scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>disneylandScreen()));
                    },
                    child: Container(child: Image.asset("assets/images/paris.png"))),
                Image.asset("assets/images/india.png"),
                Image.asset("assets/images/new york.png"),
                Image.asset("assets/images/los angles.png"),
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset("assets/images/OfferBG.png",width: 390,),
                  Container(
                    height: 80,
                    width: 390,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset("assets/images/Offer1.png"),
                        Image.asset("assets/images/Offer2.png"),
                        Image.asset("assets/images/Offer3.png"),
                      ],
                    ),
                  ),

                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
            child: Row(
              children: [
                Text( "Discover New Places",style: TextStyle(color: Color(0xff4458DB),
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            height: 290,

            child:
    ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: ToursResponse?.length,
    itemBuilder: (context, index) {
    InnerData? jsonitem=ToursResponse?.data?.data?[index];
    return Row(
    children: [
    Center(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Image.network(jsonitem!.image??""),),)
          ],
          );
        },
       ),
     ),
   ],
  ),
 );
  }
  Future tours() async {
    setState(() {
      isLoading = true;
    });

    Response response =
    await get(Uri.parse("http://alcaptin.com/api/places"),
        headers: {
      "Authorization": "Bearer $access_token",
    });

    dynamic jsonResponse = jsonDecode(response.body);
        print(response.body);

    if (response.statusCode == 200) {
      ToursResponse = Places.fromJson(jsonResponse);
        print(ToursResponse);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>disneylandScreen()));
      } else {
        print(jsonResponse["message"]);

      }
    ;

    setState(() {
      isLoading = false;
    });
  }
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled27/screen_view.dart';

import 'location.dart';
import 'signin_page.dart';


class IntroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ScreenView()));

    });
  }

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
              child :
              Image.asset("assets/images/LogoColor1.png")
          ),

      ),

    );
  }
}
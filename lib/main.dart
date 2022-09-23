import 'package:flutter/material.dart';
import 'package:untitled27/screen_view.dart';
import 'package:untitled27/signin_page.dart';
import 'package:untitled27/signup_page.dart';
import 'package:untitled27/navigation_bar.dart';
import 'package:untitled27/tours.dart';
import 'calendar.dart';
import 'disneyland.dart';
import 'favourite.dart';
import 'intro_page.dart';
import 'location.dart';
import 'notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home:IntroPage(),
    );
  }
}

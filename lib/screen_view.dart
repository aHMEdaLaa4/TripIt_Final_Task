import 'package:flutter/material.dart';
import 'package:untitled27/signin_page.dart';

class ScreenView extends StatefulWidget {
  @override
  _ScreenView createState() => _ScreenView();
}

class _ScreenView extends State<ScreenView> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
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
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 90, 8),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));

                        },
                        child: Container(
                          width: 50,height: 50,
                          child: Text('Skip',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,fontSize: 16),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90, 10, 50, 8),
                      child: GestureDetector(
                        onTap: nextPage,
                        child: Container(
                          width: 50,height: 50,
                          child: Text('Next',
                            style: TextStyle(
                                color: Color(0xFF4458DB),
                                fontWeight: FontWeight.w300,fontSize: 16),),
                        ),
                      ),
                    )

                  ],
                ),
              ),

            ],
          ),
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
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 90, 8),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));

                        },
                        child: Container(
                          width: 50,height: 50,
                          child: Text('Skip',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,fontSize: 16),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(90, 10, 50, 8),
                      child: GestureDetector(
                        onTap: nextPage,
                        child: Container(
                          width: 50,height: 50,
                          child: Text('Next',
                            style: TextStyle(
                                color: Color(0xFF4458DB),
                                fontWeight: FontWeight.w300,fontSize: 16),),
                        ),
                      ),
                    )

                  ],
                ),
              ),

            ],
          ),
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
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));

                      },
                      child: Text(" Let's Go!",
                          style: TextStyle(fontSize:16,
                              color: Color(0xFF4458DB),fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void nextPage(){
    _pageController.animateToPage(_pageController.page!.toInt() + 1,
        duration: Duration(milliseconds: 400),
        curve: Curves.linear
    );
  }

}
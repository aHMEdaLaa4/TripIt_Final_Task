import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled27/model/signin_response.dart';
import 'package:untitled27/signup_page.dart';
import 'package:http/http.dart';

import 'location.dart';
import 'navigation_bar.dart';


class SignInPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<SignInPage> {
  String email = "";
  String password = "";
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset("assets/images/Logo White.png"),
            const SizedBox(
              height: 60,
            ),

            Stack(
              alignment: Alignment.topCenter,
              fit: StackFit.passthrough,
              children: [


                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 320,
                    child: Image.asset("assets/images/BG2.png",),
                  ),
                ),

                Container(
                  child: Image.asset("assets/images/BG1.png",height:320,),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0,32,16,16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            SizedBox(height: 16,),
                            Center(child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),),
                            SizedBox(height: 32,),
                            Text("Email ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.0)),
                            SizedBox(height: 16,),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                  color: Color(0XFFF6F6F6),

                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains("@")) {
                                    return "Enter Valid Email";
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  email = value!;

                                },
                              ),
                            ),
                            Text("Password",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.0)),
                            SizedBox(height: 16,),
                            Container(
                              margin: EdgeInsets.only(bottom: 16.0),
                              decoration: BoxDecoration(
                                  color: Color(0XFFF6F6F6),

                                  borderRadius: BorderRadius.circular(8.0)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty) {
                                    return "Enter Valid Password";
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  password = value!;

                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Text("Forget Password ?",style:  TextStyle(color: Color(0xFF4458DB)),),
                                ),
                              ],
                            ),
                            SizedBox(height: 32,),
                            Container(
                                child: Column(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                              width: 400,
                                              height: 65, //z
                                              child:   Container(
                                                  width: 300,
                                                  height: 50,
                                                  child: isLoading
                                                      ? const Center(
                                                    child: CircularProgressIndicator(),
                                                  )
                                                      : MaterialButton(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(30),
                                                    ),
                                                    color: Color(0xFF4458DB),
                                                    onPressed: () {
                                                      if (_formKey.currentState!.validate()) {
                                                      _formKey.currentState!.save();
                                                      signin();
                                                    }

                                                  },
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 40.0),
                                                          child: Text("Sign in",style: TextStyle(color: Colors.white)),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 40.0),
                                                          child: Image.asset("assets/images/circle_arrow.png",width: 40,height: 40,),
                                                        )

                                                      ],
                                                    )
                                                    ,)

                                              )
                                          )
                                      )
                                    ])),
                          ]),
                    ),
                  ),
                )


              ],
            ),
            const SizedBox(
              height: 80,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?",style:TextStyle(color: Colors.white),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));


                  },
                    child: Container(child: Text(" Sign up",style:TextStyle(color: Colors.white),))),
              ],
            )
          ],
        ),
      ),
    )
    );
  }
  Future signin() async{
    setState(() {
      isLoading = true;
    });

    Response response = await post(Uri.parse("http://alcaptin.com/api/login"),
        body: {
          "email":email,
          "password":password,

        });

    dynamic jsonResponse = jsonDecode(response.body);
    print(response.body);

    if(response.statusCode==200) {
      SigninResponse signinResponse = SigninResponse.fromJson(jsonResponse);
      print(signinResponse.data);
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => NaviBarScreen()));

    }else{
      print(jsonResponse["message"]);

    }
    setState(() {
      isLoading = false;
    });

  }

}
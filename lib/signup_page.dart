import 'package:flutter/material.dart';
import 'package:untitled27/signin_page.dart';
import 'package:http/http.dart';
import 'dart:convert';

import 'package:untitled27/model/signup_response.dart';

import 'navigation_bar.dart';


class SignupPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MainPageStateWidget();
  }
}
class MainPageStateWidget extends State<SignupPage> {
  String name = "";
  String first_name = "";
  String last_name = "";
  String email = "";
  String password = "";
  String age = "";
  String gender = "";
  String phone = "";

  bool isLoading = false;
  bool checked = false;

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
                  height: 40,
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
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),),
                                SizedBox(height: 32,),
                                Text("Name",
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
                                   onSaved: (value) {
                                    name = value!;
                                       }
                                         ),
                                           ),

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
                                Text("Phone Number",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.0)),
                                SizedBox(height: 16,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0XFFF6F6F6),

                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                      onSaved: (value) {
                                        phone = value!;
                                      }
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: checked, onChanged: (value) {
                                      setState(() {
                                        checked = value!;
                                      });
                                    }),
                                    Flexible(
                                      child: RichText(
                                          text: TextSpan(
                                              text: "I agree the ",
                                              style: TextStyle(color: Colors.black,),
                                              children: [
                                                TextSpan(
                                                    text: "Terms & Conditions",
                                                    style: TextStyle(
                                                        color: Color(0xFF4458DB),
                                                        fontWeight: FontWeight.bold)),
                                              ])),
                                    )
                                  ],
                                ),

                                SizedBox(height: 16,),
                                Container(
                                    child: Column(
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: SizedBox(
                                                  width: 400,
                                                  height: 65, //
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
                                                          signup();
                                                        }

                                                      },
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(right: 40.0),
                                                              child: Text("Sign Up",style: TextStyle(color: Colors.white),),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 40.0),
                                                              child: Image.asset("assets/images/circle_arrow.png",width: 40,height: 40,),
                                                            )

                                                          ],
                                                        )
                                                        ,
                                                      ),)

                                                  )
                                              )

                                        ])),
                            ]),
                        ),
                      ),
                    )


                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",style:TextStyle(color: Colors.white),),
                      GestureDetector( onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));

                      }, child: Container(child: Text(" Login",style:TextStyle(color: Colors.white),))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
  Future signup() async{
    setState(() {
      isLoading = true;
    });

    Response response = await post(Uri.parse("http://alcaptin.com/api/register"),
        body: {
          "name":name,
          "first_name":first_name,
          "last_name":last_name,
          "email":email,
          "password":password,
          "age":age,
          "gender":gender,
          "phone" : phone,

        });

    dynamic jsonResponse = jsonDecode(response.body);
    print(response.body);

    if(response.statusCode==200) {
      SignupResponse signupResponse = SignupResponse.fromJson(jsonResponse);
      print(signupResponse.data);
      Navigator.push(
          context, MaterialPageRoute(builder: (_)=>NaviBarScreen()));

    }else{
      print(jsonResponse["message"]);

    }
    setState(() {
      isLoading = false;
    });

  }

}
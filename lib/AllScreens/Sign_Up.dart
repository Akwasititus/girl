import 'package:flutter/material.dart';

import 'Home.dart';

class SignUP extends StatefulWidget {
  //const SignUP({ Key? key }) : super(key: key);



  static const String idScreen = "SignUP";

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {

  static var thecolor = Color.fromARGB(255, 245, 103, 57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,

      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  Image.asset("images/slider_1.png", height: 100,),

                  SizedBox(height: 10,),

                  Text('Create a new Account'),

                  SizedBox(height: 10,),

                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: TextField(
                      onChanged: (String value){},
                      cursorColor: thecolor,
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(
                              Icons.email,
                              color: Colors.grey,

                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: TextField(
                      onChanged: (String value){},
                      cursorColor: thecolor,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                    ),
                  ),


                  Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: TextField(
                      onChanged: (String value){},
                      cursorColor: thecolor,
                      decoration: InputDecoration(
                          hintText: "Confirm Password",
                          prefixIcon: Material(
                            elevation: 0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(
                              Icons.lock_open_rounded,
                              color: Colors.grey,
                            ),
                          ),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                    ),
                  ),


                  RaisedButton(
                      color: thecolor,
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontFamily: "fonts/opensans_bold.ttf"
                            ),
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      }
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 100,
                          child: Divider()),
                      Text("Or"),
                      Container(
                          width: 100,
                          child: Divider())
                    ],
                  ),

                  SizedBox(height: 10,),


                  RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("images/google_icon.png", height: 30, width: 30,),

                              SizedBox(width: 10,),
                              Text(
                                "Continue with Google",
                                style: TextStyle(
                                    fontFamily: "fonts/opensans_bold.ttf"
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      }
                  ),


                  SizedBox(height: 5,),
                  RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Row(
                            children: [
                              Image.asset("images/apple_icon.png", height: 30, width: 30,),

                              SizedBox(width: 10,),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(
                                    fontFamily: "fonts/opensans_bold.ttf"
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24.0),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      }
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account? "),
                      Text("Sign In", style: TextStyle(color: thecolor, fontWeight: FontWeight.bold),)
                    ],
                  )



                ],

              ),
            ) ,
          ) ,
        ),
      ),


    );


  }
}
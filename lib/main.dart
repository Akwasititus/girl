import 'package:flutter/material.dart';
import 'package:girl/AllScreens/Sign_Up.dart';
import 'package:girl/AllScreens/login.dart';
import 'package:girl/AllScreens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charity Book Store',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: Splash.idScreen,
      routes: {
        Splash.idScreen :(context) => Splash(),
        LogIn.idScreen:(context) =>LogIn(),
        SignUP.idScreen:(context) =>SignUP(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

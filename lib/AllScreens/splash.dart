import 'dart:async';

import 'package:flutter/material.dart';
import 'package:girl/AllScreens/login.dart';

class Splash extends StatefulWidget {
  static const String idScreen = "splash";
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  static var thecolor = Color.fromARGB(255, 245, 103, 57);
  double _progressValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _progressValue = 0.0;
    _updateProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //i didnt include an appbar because in the screen there is no appbar
      //this is to center what is to be displayed in the body
      body: Column(
        children: <Widget> [

          new Flexible(child: Center(
            //i added singlechild scrowview so that for smaller screens which wouldnt be able to contain the whole widget will have scrolling abilities
            child: SingleChildScrollView(

              //column bcs we want to arange the items vertical
              child: Column(

                //children to contain the wigets
                children: [



                ],
              ),
            ),
          ), flex: 5,
          ),

          new Flexible(child: Column(
            children: [
              Text("By",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 5,),
              Text("TechTruct", style: TextStyle(color: thecolor,)),
            ],
          ) )

        ],
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(milliseconds: 10);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.003;

        if (_progressValue.toStringAsFixed(1) == '1.0') {

          Navigator.pushNamedAndRemoveUntil(context, LogIn.idScreen, (route) => false);
          return;
        }
      });
    });
  }

}

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:quizestar/home.dart';


class splashscreen extends StatefulWidget {

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=> homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Text(
          "Quizstar\nTest Yourself...",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontFamily:  "DancingScript",
          ),
          textAlign: TextAlign.center,
        ),

      ),
    );
  }
}

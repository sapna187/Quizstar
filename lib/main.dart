import 'package:flutter/material.dart';
import 'package:quizestar/splash.dart';
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quizstar",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: splashscreen(),
    );
  }
}

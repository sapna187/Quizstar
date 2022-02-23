import 'package:flutter/material.dart';
import 'package:quizestar/quizpage.dart';
import 'package:flutter/services.dart';
class homepage extends StatefulWidget {

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> language=[
    "Python",
    "Java",
    "Javascript",
    "C++",
    "Linux",
  ];
  List<String> images = [
    "images/py.png",
    "images/java.jpeg",
    "images/js.jpg",
    "images/c++.jpg",
    "images/linux.png",
  ];

  List<String> des = [
    "Python is one of the most popular and fastest programming language since half a decade.\nIf You think you have learnt it.. \nJust test yourself !!",
    "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",
    "Javascript is one of the most Popular programming language supporting the Web.\nIt has a wide range of Libraries making it Very Powerful !",
    "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
    "Linux is a OPEN SOURCE Operating System which powers many Servers and Workstation.\nIt is also a top Priority in Developement Work !",
  ];

  Widget customcard(String language, String image, String des){
    return Padding(padding: EdgeInsets.symmetric(
      vertical: 20.0,
      horizontal: 30.0,
    ),
     child: InkWell(
       onTap: (){
         Navigator.pushReplacement(context, MaterialPageRoute(
           builder: (context)=> loadjson(),
         ));
       },
       child: Material(
         color: Colors.indigoAccent,
         elevation: 10.0,
         borderRadius: BorderRadius.circular(25.0),
         child: Container(
           child: Column(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.symmetric(
                   vertical: 10.0,
                 ),
                 child: Material(
                   elevation: 5.0,
                   borderRadius: BorderRadius.circular(100.0),
                   child: Container(
                     // changing from 200 to 150 as to look better
                     height: 150.0,
                     width: 150.0,
                     child: ClipOval(
                       child: Image(
                         fit: BoxFit.cover,
                         image: AssetImage(
                           image,
                         ),
                       ),
                     ),
                   ),
                 ),
               ),


             Center(
               child: Text(
                 language,
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.white,
                   fontFamily: "DancingScript",
                   fontWeight: FontWeight.w700,
                 ),
               ),
             ),

             Container(
               padding: EdgeInsets.all(20.0),
               child: Text(
                 des,
                 style: TextStyle(
                   fontSize: 18.0,
                   color: Colors.white,
                   fontFamily: "DancingScript",
                 ),
                 maxLines: 5,
                 textAlign: TextAlign.justify,
               ),
             ),
           ],
         ),
        ),
    ),
    ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          "Quizstar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          customcard(language[0], images[0], des[0]),
          customcard(language[1], images[1], des[1]),
          customcard(language[2] ,images[2], des[2]),
          customcard(language[3], images[3], des[3]),
          customcard(language[4] ,images[4], des[4]),

        ],
      ),
    );
  }

  loadjson() {}
}

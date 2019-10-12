import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:sand_storm/ui/homepage.dart';

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Color(0xFF141414),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150.0,
                  ),

                  Image.asset(
                   'assets/storm.png',
                    color: Colors.white,
                    width: 200.0,
                    height: 200.0,
                  ),
//                  Text(
//                    'Sand Storm Detector',
//                    style: TextStyle(
//                        fontFamily: "WorkSansBold",
//                        fontSize: 50.0,
//                        color: Colors.white),
//                  ),
                  SizedBox(
                    height: 50.0,
                  ),

                  Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 120.0,
                  ),
                  Text(
                    'Version 1.2',
                    style: TextStyle(
                        fontFamily: "WorkSansBold",
                        fontSize: 13.0,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

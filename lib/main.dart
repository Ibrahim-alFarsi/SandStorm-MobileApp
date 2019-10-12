import 'package:flutter/material.dart';
import 'package:sand_storm/ui/homepage.dart';
import 'package:sand_storm/ui/logo_page.dart';
import 'package:sand_storm/ui/logopage.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height >= 775.0
              ? MediaQuery.of(context).size.height
              : 775.0,
          color: Color(0xFF141414),
         // child: LogoPage(),
          child: LogoScreen(),
        ),
      ),
    );
  }
}

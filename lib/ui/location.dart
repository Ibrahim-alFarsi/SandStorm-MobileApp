import 'package:flutter/material.dart';

class UserLocation extends StatefulWidget {
  @override
  _UserLocationState createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff141414),
        actions: <Widget>[

          IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Color(0xff141414),
        child: ListView(),
      ),
    );
  }
}

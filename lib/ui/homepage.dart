import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'cityinfo_dammam.dart';
import 'cityinfo_jed.dart';
import 'cityinfo_riyadh.dart';
import 'location.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedHour = DateFormat('kk : mm  a').format(now);
    String formattedDate = DateFormat('EEE d MMM').format(now);

    return Container(
      color: Color(0xff141414),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
            child: Card(
              color: Color(0xFF141414),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 45.0),
                            child: Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF686363),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Text(
                            formattedDate,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 60.0,
                          left: 60.0,
                          top: 40.0,
                          bottom: 20.0,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UserLocation(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 33,
                          ))
                    ],
                  ),
//                Padding(
//                  padding: EdgeInsets.symmetric(vertical: 20),
//                  child: Divider(
//                    color: Colors.grey,
//                  ),
//                ),
                ],
              ),
            ),
            //_________________________________________________
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CityInfoJeddah()));
              },
              child: Card(
                color: Color(0xFF141414),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 80.0, bottom: 5.0),
                              child: Text(
                                formattedHour,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  //: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60.0),
                              child: Text(
                                'Jeddah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 60.0,
                            left: 60.0,
                            top: 40.0,
                            bottom: 20.0,
                          ),
                        ),
                        Image.asset(
                          'assets/walk.png',
                          width: 45.0,
                          height: 60.0,
                        ),
                      ],
                    ),
//                Padding(
//                  padding: EdgeInsets.symmetric(vertical: 20),
//                  child: Divider(
//                    color: Colors.grey,
//                  ),
//                ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            //_________________________________________________
          ),

          //_______________________________________________________________
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CityInfoRiyadh(),
                  ),
                );
              },
              child: Card(
                color: Color(0xFF141414),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60.0, bottom: 5.0),
                              child: Text(
                                formattedHour,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  //: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text(
                                'Riyadh',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 60.0,
                            left: 60.0,
                            top: 40.0,
                            bottom: 20.0,
                          ),
                        ),
                        Image.asset(
                          'assets/sit.png',
                          width: 45.0,
                          height: 60.0,
                        ),
                      ],
                    ),
//                Padding(
//                  padding: EdgeInsets.symmetric(vertical: 20),
//                  child: Divider(
//                    color: Colors.grey,
//                  ),
//                ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            //_________________________________________________
          ),

          //----------------------------------------

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CityInfoDammam()),
                );
              },
              child: Card(
                color: Color(0xFF141414),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 50.0, bottom: 5.0),
                              child: Text(
                                formattedHour,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  //: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Dammam',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 60.0,
                            left: 60.0,
                            top: 40.0,
                            bottom: 20.0,
                          ),
                        ),
                        Image.asset(
                          'assets/run.png',
                          width: 45.0,
                          height: 60.0,
                        ),
                      ],
                    ),
//                Padding(
//                  padding: EdgeInsets.symmetric(vertical: 20),
//                  child: Divider(
//                    color: Colors.grey,
//                  ),
//                ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            //_________________________________________________
          ),
        ],
      ),
    );
  }
}

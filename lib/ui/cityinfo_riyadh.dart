import 'package:flutter/material.dart';

class CityInfoRiyadh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cities',
          style: TextStyle(fontSize: 25.0),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color(0xFF141414),
      ),
      backgroundColor: Color(0xFF141414),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Text('nill'),
                  ),
                ),
                detailsText(),
                customDividerWidget(),
                Text(
                  'Friday,Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        curentCondition(),
                        curentCondition(),
                        curentCondition(),
                        curentCondition(),
                      ],
                    ),
                  ],
                ),
                customDividerWidget(),
                Row(
                  children: <Widget>[
                    labelText('Visibility', '9.7KM'),
                    labelText('Air Quality', '97%'),
                  ],
                )
              ]),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget customDividerWidget() {
    //simple divider with a padding wrapped
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Divider(color: Colors.grey),
    );
  }

  Widget labelText(String labelText, String mainText) {
    TextStyle labelTextStyle = new TextStyle(
        fontSize: 12, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w400);
    TextStyle mainTextStyle = new TextStyle(
        fontSize: 18, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w400);
    return Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                labelText,
                textAlign: TextAlign.right,
                style: labelTextStyle,
              ),
              Text(
                mainText,
                textAlign: TextAlign.left,
                style: mainTextStyle,
              ),
            ]));
  }

  Widget curentCondition() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Morning',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Image.asset('assets/high.png',
              width: 80.0, height: 80.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text('High',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                )),
          ),
        ],
      ),
    );
  }

  Widget detailsText() {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF3BDBD5), Color(0xFF18B556)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'RIYADH',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          subtitle: Text(
            'Danger',
            style: TextStyle(
              //color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w500,
                 color: Color(0xff9f041b)
                //foreground: Paint()..shader = linearGradient
    ),
          ),
          trailing: Image.asset('assets/sit.png'),
        )
      ],
    );
  }
}

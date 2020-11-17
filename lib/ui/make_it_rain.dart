import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  void _rainMoney() {
    // important - setState is called each time we need to update the UI
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain!"),
        backgroundColor: Colors.lightGreen.shade500,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Center(
              child: new Text(
                "Get Rich by One Click!",
                style: new TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text(
                '\$$_moneyCounter',
                style: new TextStyle(
                    color: _moneyCounter > 2000 ? Colors.blueAccent : Colors.red,  //improvement
                    fontSize: 49.9,
                    fontWeight: FontWeight.w800),
              ),
            )),
            new Center(
              child: new Text("- Bank Account -",
              style: new TextStyle(
                color: Colors.pink,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new FlatButton(
                  color: Colors.lightGreen.shade400,
                  textColor: Colors.white,
                  onPressed: _rainMoney,
                  child: new Text(
                    "Let it Rain!",
                    style: new TextStyle(
                      fontSize: 29.9,
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Bus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(20.0),),
                new Text("Bus",
                    style: new TextStyle(fontSize: 30.0,)),
                new Text("Rp. 180.000",
                    style: new TextStyle(fontSize: 30.0,)),
                new Padding(
                  padding: new EdgeInsets.all(20.0),),
                new Icon(
                    Icons.airport_shuttle, size: 90,

                ),
              ],
            )));
  }
}
import 'package:flutter/material.dart';
class Sepeda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(20.0),),
                new Text("Tarif Sepeda",
                    style: new TextStyle(fontSize: 30.0,)),
                new Text("Rp. 20.000",
                    style: new TextStyle(fontSize: 30.0,)),
                new Padding(
                  padding: new EdgeInsets.all(20.0),),
                new Icon(
                  Icons.agriculture, size: 90,

                ),
              ],
            )));
  }
}
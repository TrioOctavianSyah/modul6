import 'package:flutter/material.dart';
import './h_bis.dart' as bus;
import './h_kereta.dart' as kereta;
import './h_sepeda.dart' as sepeda;
import './h_taksi.dart' as taksi;

void main() {
  runApp(new MaterialApp(
      title: "Tab Bar",
      home: new Home(),
    debugShowCheckedModeBanner: false,


  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}
class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[200],
        title: new Text("Tarif Perjalanan",),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.train),
            ),
            new Tab(
              icon: new Icon(Icons.directions_bus),
            ),
            new Tab(
              icon: new Icon(
                Icons.local_taxi,
              ),
            ),
            new Tab(
                icon: new Icon(
                  Icons.directions_bike,
                ),
            ),
          ],
        ),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new kereta.Kereta(),
            new bus.Bus(),
            new taksi.Taksi(),
            new sepeda.Sepeda(),
          ]),
    );
  }
}
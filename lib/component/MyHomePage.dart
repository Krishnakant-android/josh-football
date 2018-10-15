import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joshfootball/component/NavigationDrawerView.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text(title),
        ),
        // ignore: strong_mode_invalid_cast_new_expr
        drawer: NavigationDrawerView(),

        body: new DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              actions: <Widget>[],
              title: new TabBar(
                tabs: [
                  new Tab(text:'Tab1',icon: new Icon(Icons.directions_car)),
                  new Tab(text:'Tab2',icon: new Icon(Icons.directions_transit)),
                  new Tab(text:'Tab3',icon: new Icon(Icons.directions_bike)),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: new TabBarView(
              children: [
                new Icon(Icons.directions_car,size: 50.0,),
                new Icon(Icons.directions_transit,size: 50.0,),
                new Icon(Icons.directions_bike,size: 50.0,),
              ],
            ),
          ),
        ));
  }
}
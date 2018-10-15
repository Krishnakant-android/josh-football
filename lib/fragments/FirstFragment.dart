import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joshfootball/fragments/SecondFragment.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondFragment()),
            );
          },
        ),
      ),
    );
  }
}
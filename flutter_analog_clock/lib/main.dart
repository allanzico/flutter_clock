import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/ClockFace.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analog clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Clock(),
    );
  }
}

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClockFace(),
          ],
        ),
      ),
    );
  }
}

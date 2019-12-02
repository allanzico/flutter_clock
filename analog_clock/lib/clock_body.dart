import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/clock_face.dart';

class ClockBody extends StatelessWidget {
  ClockBody();

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
        aspectRatio: 1.0,
        child: new Stack(children: <Widget>[
          new Container(
            width: double.infinity,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: new ClockFace(),
          )
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

class ClockFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(1.0),
      child: new AspectRatio(
        aspectRatio: 1.0,
        child: new Container(
          width: double.infinity,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: new Stack(
            children: <Widget>[
              new Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.all(10.0),
                  child: AnalogClock(
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1, color: Colors.green),
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Colors.white.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: new AssetImage('assets/images/map.png'),
                            fit: BoxFit.cover)),
                    width: 150.0,
                    isLive: true,
                    hourHandColor: Colors.grey,
                    minuteHandColor: Colors.black,
                    showSecondHand: true,
                    secondHandColor: Colors.green,
                    numberColor: Colors.green,
                    showNumbers: true,
                    textScaleFactor: 1,
                    showTicks: true,
                    tickColor: Colors.green,
                    showDigitalClock: true,
                    digitalClockColor: Colors.black,
                    datetime: DateTime.now(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

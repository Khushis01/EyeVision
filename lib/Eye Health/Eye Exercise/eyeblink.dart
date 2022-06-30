import 'dart:async';

import 'package:eye_vision/Eye%20Health/eye_exercise.dart';
import 'package:flutter/material.dart';

class EyeBlink extends StatefulWidget {
  const EyeBlink({Key? key}) : super(key: key);

  @override
  _EyeBlinkState createState() => _EyeBlinkState();
}

class _EyeBlinkState extends State<EyeBlink> {
  // bool _isButtonPressed = false;
  //
  // bool _showBox = false;
  //
  // void _startTimer() {
  //   setState(() {
  //     _isButtonPressed = true;
  //   });
  //
  //   Timer(Duration(seconds: 3), () {
  //     setState(() {
  //       _showBox = true;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[700],
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100, left: 15, bottom: 15),
          child: Text(
            "INSTRUCTIONS",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 15),
          child: Text(
            "1.Breathe in and close your eyes.\n\n2.Breathe out and open your eyes.\n\n3.Make it a habit of blinking regularly,once or twice every 10 seconds.\n\n4.Bewfare of staring. Whenever you became aware of staring,contracting your body or holding your breath,blink your eyes rapidily and take two big breathes.",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.lightGreenAccent,
                onPrimary: Colors.black,
                padding: EdgeInsets.all(5.0),
                minimumSize: Size(70.0, 40.0)),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Breathin())),
            child: Text(
              "Proceed",
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ]),
    );
  }
}

class Breathin extends StatefulWidget {
  const Breathin({Key? key}) : super(key: key);

  @override
  _BreathinState createState() => _BreathinState();
}

class _BreathinState extends State<Breathin> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Breathout())));
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(children: <Widget>[
        Center(
          child: Container(
            child: Image(image: AssetImage("assets/images/openeye.png")),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "CLOSE EYE AND BREATHE IN",
              style: TextStyle(fontSize: 25),
            ),
          ),
        )
      ]),
    ));
  }
}

class Breathout extends StatefulWidget {
  const Breathout({Key? key}) : super(key: key);

  @override
  _BreathoutState createState() => _BreathoutState();
}

class _BreathoutState extends State<Breathout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(children: <Widget>[
          Center(
            child: Container(
              child: Image(image: AssetImage("assets/images/closeeye.png")),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "OPEN EYE AND BREATHE OUT",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(5.0),
                  minimumSize: Size(70.0, 40.0)),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Breathin())),
              child: Text("Start again", style: TextStyle(fontSize: 25)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(5.0),
                  minimumSize: Size(70.0, 40.0)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EyeExercise())),
              child: Text("Exit test", style: TextStyle(fontSize: 25)),
            ),
          )
        ]),
      ),
    );
  }
}

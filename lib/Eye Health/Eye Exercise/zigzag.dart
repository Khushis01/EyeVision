import 'dart:async';

import 'package:flutter/material.dart';

import '../eye_exercise.dart';

class ZigZag extends StatefulWidget {
  const ZigZag({Key? key}) : super(key: key);

  @override
  _ZigZagState createState() => _ZigZagState();
}

class _ZigZagState extends State<ZigZag> {
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
            "1.Cover your closed eyes with your palms after rubbing them.\n\n2.Palm daily.\n\n3.Make it a life-long habit.\n\n4.Do not press eyes while keeping palm on eyes and face",
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
                context, MaterialPageRoute(builder: (context) => Circle1())),
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

class Circle1 extends StatefulWidget {
  const Circle1({Key? key}) : super(key: key);

  @override
  _Circle1State createState() => _Circle1State();
}

class _Circle1State extends State<Circle1> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Circle2())));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.lime,
            ),
          ),
        ),
      ),
    );
  }
}

class Circle2 extends StatefulWidget {
  const Circle2({Key? key}) : super(key: key);

  @override
  _Circle2State createState() => _Circle2State();
}

class _Circle2State extends State<Circle2> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Circle3())));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.lime,
            ),
          ),
        ),
      ),
    );
  }
}

class Circle3 extends StatefulWidget {
  const Circle3({Key? key}) : super(key: key);

  @override
  _Circle3State createState() => _Circle3State();
}

class _Circle3State extends State<Circle3> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Circle4())));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.lime,
            ),
          ),
        ),
      ),
    );
  }
}

class Circle4 extends StatefulWidget {
  const Circle4({Key? key}) : super(key: key);

  @override
  _Circle4State createState() => _Circle4State();
}

class _Circle4State extends State<Circle4> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => EndTest())));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            color: Colors.lime,
          ),
        ),
      ),
    );
  }
}

class EndTest extends StatefulWidget {
  const EndTest({Key? key}) : super(key: key);

  @override
  _EndTestState createState() => _EndTestState();
}

class _EndTestState extends State<EndTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
                onPrimary: Colors.white,
                padding: EdgeInsets.all(5.0),
                minimumSize: Size(70.0, 40.0)),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Circle1())),
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
        ),
      ],
    ));
  }
}

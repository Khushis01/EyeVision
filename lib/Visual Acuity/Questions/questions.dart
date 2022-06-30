import 'dart:async';

import 'package:eye_vision/Color%20Vision/Quiz/Red%20Green%20Vision%20Test/result_rgtest.dart';
import 'package:eye_vision/Visual%20Acuity/Results/Results.dart';
import 'package:flutter/material.dart';

class Question1 extends StatefulWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Question2())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "A",
            style: TextStyle(
              fontSize: 60,
            ),
          ),
        ),
      ),
    ));
  }
}

class Question2 extends StatefulWidget {
  const Question2({Key? key}) : super(key: key);

  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Question3())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "H",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    ));
  }
}

class Question3 extends StatefulWidget {
  const Question3({Key? key}) : super(key: key);

  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => ResultVs1())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "W",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    ));
  }
}

class Question4 extends StatefulWidget {
  const Question4({Key? key}) : super(key: key);

  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Question5())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "L",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    ));
  }
}

class Question5 extends StatefulWidget {
  const Question5({Key? key}) : super(key: key);

  @override
  _Question5State createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Question6())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "U",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    ));
  }
}

class Question6 extends StatefulWidget {
  const Question6({Key? key}) : super(key: key);

  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Question7())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "Q",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    ));
  }
}

class Question7 extends StatefulWidget {
  const Question7({Key? key}) : super(key: key);

  @override
  _Question7State createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => ResultVs2())));
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Text(
            "L",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ),
    ));
  }
}

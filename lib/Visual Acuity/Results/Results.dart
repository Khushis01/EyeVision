import 'dart:async';

import 'package:eye_vision/Visual%20Acuity/Questions/questions.dart';
import 'package:eye_vision/Visual%20Acuity/homePage.dart';
import 'package:eye_vision/Visual%20Acuity/right_eye_screen.dart';
import 'package:eye_vision/screens.dart';
import 'package:flutter/material.dart';

class ResultVs1 extends StatefulWidget {
  const ResultVs1({Key? key}) : super(key: key);

  @override
  _ResultVs1State createState() => _ResultVs1State();
}

class _ResultVs1State extends State<ResultVs1> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Question4())));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              color: Colors.lightBlue,
              elevation: 2,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "If you have been able to recognize these alphabets properly then you are good to go furthur if not then it is highly recommended to consult an opthamologist",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResultVs2 extends StatefulWidget {
  const ResultVs2({Key? key}) : super(key: key);

  @override
  _ResultVs2State createState() => _ResultVs2State();
}

class _ResultVs2State extends State<ResultVs2> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            height: height * 0.5,
            width: width * 0.7,
            child: Card(
              color: Colors.lightBlue,
              elevation: 2,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "If you were able to identify these alphabets, you have a strong central visual acuity. If you were unable to identify these alphabets your eye power has increased for sure. A comprehensive exam, performed by an opthamologist is required.",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white70,
                      onPrimary: Colors.black87,
                      padding: EdgeInsets.all(10.0),
                      // minimumSize: Size(30.0, 20.0)
                    ),
                    child: const Text('Proceed',
                        style: TextStyle(
                          fontSize: 25.0,
                        )),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CloseEyeRight())),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    onPrimary: Colors.black87,
                    padding: EdgeInsets.all(10.0),
                    //minimumSize: Size(30.0, 20.0)
                  ),
                  child: const Text('End Test',
                      style: TextStyle(
                        fontSize: 25.0,
                      )),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),
                ),
              ),
            ),
          ]),
        ])),
      ),
    );
  }
}

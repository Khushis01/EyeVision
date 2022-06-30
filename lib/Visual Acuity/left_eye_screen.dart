import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Questions/questions.dart';
import 'quiz_questions.dart';

class CloseEyeLeft extends StatelessWidget {
  const CloseEyeLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    "CLOSE LEFT EYE",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans Condensed',
                      color: Colors.black87,
                    ),
                  )),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: height * 0.5,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/close eye.png"),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    //minimumSize: Size(50.0, 30.0)
                  ),
                  child: const Text('Start Test',
                      style: TextStyle(
                        fontSize: 25.0,
                      )),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Question1()))),
            ),
          ],
        ),
      ),
    );
  }
}

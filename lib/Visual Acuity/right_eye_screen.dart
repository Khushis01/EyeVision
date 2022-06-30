import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Questions/questions.dart';

class CloseEyeRight extends StatefulWidget {
  const CloseEyeRight({Key? key}) : super(key: key);

  @override
  State<CloseEyeRight> createState() => _CloseEyeRightState();
}

class _CloseEyeRightState extends State<CloseEyeRight> {
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
                    "CLOSE RIGHT EYE",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Open Sans Condensed',
                      color: Colors.black87,
                    ),
                  )),
            ),
            Container(
                margin: EdgeInsets.only(top: 80),
                height: height * 0.5,
                width: width * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/close eye.png'),
                      fit: BoxFit.cover),
                )),
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
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Question1())), /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VsQuestions()))*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}

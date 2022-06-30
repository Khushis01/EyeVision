import 'package:flutter/material.dart';
import 'package:eye_vision/Visual Acuity/quiz_questions.dart';

import 'left_eye_screen.dart';

void main() {
  runApp(Instructions());
}

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: ListView(children: [
            Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "INSTRUCTIONS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  height: height * 0.3,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Eye-Test.jpg'),
                        fit: BoxFit.cover),
                  )),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.all(10.0),
                  width: 350.0,
                  height: 250.0,
                  child: Text(
                      '''1. Hold the gadget at an arm's distance.\n\n2. Keep the head straight and device infront of your eyes.\n\n3. You have to identify the object and choose that one among the given options. Click blurry image if not clear.
                                   ''',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  padding: EdgeInsets.all(5.0),
                  // minimumSize: Size(30.0, 20.0)
                ),
                child: const Text('Proceed',
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CloseEyeLeft())),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}

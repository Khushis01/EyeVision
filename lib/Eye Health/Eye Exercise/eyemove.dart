import 'package:flutter/material.dart';

import '../eye_exercise.dart';

class EyeMove extends StatefulWidget {
  const EyeMove({Key? key}) : super(key: key);

  @override
  _EyeMoveState createState() => _EyeMoveState();
}

class _EyeMoveState extends State<EyeMove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[700],
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100, left: 15),
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
          margin: EdgeInsets.only(top: 30, left: 15),
          child: Text(
            "1.Rotate your eyes up-down.\n\n2. Rotate your eyes left-right.\n\n3.Rotate your eyes clockwise.\n\n4.Rotate your eyes anti-clockwise.",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  padding: EdgeInsets.all(5.0),
                  minimumSize: Size(70.0, 40.0)),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EyeExercise())),
              child: Text("Exit test", style: TextStyle(fontSize: 25)),
            ),
          ),
        )

        // Center(
        //   child: Container(
        //     child: ElevatedButton(
        //       style: ElevatedButton.styleFrom(
        //           primary: Colors.white70,
        //           onPrimary: Colors.black87,
        //           padding: EdgeInsets.all(10.0),
        //           minimumSize: Size(50.0, 30.0)),
        //       child: const Text('Proceed',
        //           style: TextStyle(
        //             fontSize: 25.0,
        //           )),
        //       onPressed: () => Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => ())),
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}

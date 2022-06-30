import 'package:flutter/material.dart';

import '../eye_exercise.dart';

class Palming extends StatefulWidget {
  const Palming({Key? key}) : super(key: key);

  @override
  _PalmingState createState() => _PalmingState();
}

class _PalmingState extends State<Palming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[900],
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 100, left: 15),
          child: Text(
            "INSTRUCTIONS",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30, left: 15),
          child: Text(
            "1.Cover your closed eyes with your palms after rubbing them.\n2.Palm daily.\n3.Make it a life-long habit.\n4.Do not press eyes while keeping palm on eyes and face",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 50),
            child: Image(image: AssetImage("assets/images/palming1.png"))),
        Container(
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
        )
      ]),
    );
  }
}

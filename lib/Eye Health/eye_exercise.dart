import 'package:flutter/material.dart';
import 'Eye Exercise/eyeblink.dart';
import 'Eye Exercise/eyemove.dart';
import 'Eye Exercise/palming.dart';
import 'Eye Exercise/zigzag.dart';

class EyeExercise extends StatefulWidget {
  const EyeExercise({Key? key}) : super(key: key);

  @override
  _EyeExerciseState createState() => _EyeExerciseState();
}

class _EyeExerciseState extends State<EyeExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 10,
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Palming())),
                      child: Column(children: <Widget>[
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image(
                            image: AssetImage("assets/images/palming.png"),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(20),
                            height: 25,
                            width: 100,
                            child: Center(
                                child: Text("Palming",
                                    style: TextStyle(fontSize: 20)))),
                      ]),
                    ),
                  ),
                  //),
                  //),
                ),
                Expanded(
                  flex: 1,
                  // child: Material(
                  //   child: Ink(
                  //     //margin: EdgeInsets.all(20),
                  //     decoration: BoxDecoration(
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.blueGrey,
                  //           blurRadius: 5.0,
                  //           spreadRadius: 1.0,
                  //           offset: Offset(5.0, 5.0),
                  //         ),
                  //       ],
                  //     ),
                  child: Card(
                    elevation: 10,
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EyeBlink())),
                      child: Column(children: <Widget>[
                        Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image(
                            image: AssetImage("assets/images/eyeblink.png"),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(20),
                            height: 25,
                            width: 100,
                            child: Center(
                                child: Text("Blinking and Breathing",
                                    style: TextStyle(fontSize: 20)))),
                      ]),
                    ),
                  ),
                ),
                //),
                // ),
              ]),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Card(
                      elevation: 10,
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EyeMove())),
                        child: Column(children: <Widget>[
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Image(
                              image: AssetImage("assets/images/eyeball.png"),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(20),
                              height: 25,
                              width: 100,
                              child: Center(
                                  child: Text("Eye Moves",
                                      style: TextStyle(fontSize: 20)))),
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Card(
                      elevation: 10,
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ZigZag())),
                        child: Column(children: <Widget>[
                          Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Image(
                              height: 30,
                              width: 30,
                              image: AssetImage("assets/images/zigzag.png"),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(20),
                              height: 25,
                              width: 100,
                              child: Center(
                                  child: Text("ZigZag",
                                      style: TextStyle(fontSize: 20)))),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

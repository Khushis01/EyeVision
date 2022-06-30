import 'eyewear.dart';
import 'maintaining_posture.dart';
import 'package:flutter/material.dart';

import 'eat_well.dart';
import 'eye_exercise.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan, Colors.white])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(children: <Widget>[
            Container(
              height: 230,
              width: 100,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(5.0, 5.0),
                ),
              ]),
              margin: EdgeInsets.all(30),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text('EYES EXERCISING',
                            style: TextStyle(fontSize: 28))),
                    Container(
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: 100,
                            height: 80,
                            child: Text(
                              'Strengthening your eye muscles helps you focus and ease eye movements',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image(
                                height: 90,
                                width: 90,
                                image: AssetImage(
                                    "assets/images/Eye Exercise.jpg"),
                              ),
                            ))
                      ]),
                    ),
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EyeExercise())),
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 10),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                offset: Offset(5.0, 5.0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blue,
                          ),
                          child: const Text(
                            'Get started',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              height: 285,
              width: 100,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(5.0, 5.0),
                ),
              ]),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child:
                            Text('EAT WELL', style: TextStyle(fontSize: 28))),
                    Container(
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            width: 100,
                            height: 170,
                            child: Text(
                              'Good eye health starts with the food on your plate.Well-balanced diet ensures healthy weight which lowers odds of obesity and diseases like type 2 diabetes,leading cause of blindness in adults.',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image(
                                height: 90,
                                width: 90,
                                image: AssetImage("assets/images/health.png"),
                              ),
                            ))
                      ]),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EatWell())),
                          child: const Text('Read More...',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 330,
              width: 100,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(5.0, 5.0),
                ),
              ]),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text('WEARING SUNGLASSES AND PROTECTIVE EYEWEAR',
                            style: TextStyle(fontSize: 28))),
                    Container(
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            width: 100,
                            height: 140,
                            child: Text(
                              'The right pair of shades will help protect your eyes from the sun"s ultraviolet (UV) rays. Too much UV exposure boosts your chances of cataracts ',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image(
                                height: 90,
                                width: 90,
                                image: AssetImage("assets/images/eyewear.png"),
                              ),
                            ))
                      ]),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: const Text('Read More...'),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EyeWear())),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 270,
              width: 100,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(5.0, 5.0),
                ),
              ]),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text('MAINTAINING POSTURE',
                            style: TextStyle(fontSize: 28))),
                    Container(
                      child: Row(children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: 100,
                            height: 110,
                            child: Text(
                              'Staring at a  computer or phone screen for too long can cause eyestrain,blurry vision,troubling focusing',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Image(
                                height: 130,
                                width: 100,
                                image: AssetImage("assets/images/women.png"),
                              ),
                            ))
                      ]),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: const Text('Read More...'),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Posture())),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

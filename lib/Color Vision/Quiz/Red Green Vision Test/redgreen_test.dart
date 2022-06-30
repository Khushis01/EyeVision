import 'package:flutter/material.dart';

import "red_test.dart";

class Image1 extends StatefulWidget {
  const Image1({Key? key}) : super(key: key);

  @override
  _Image1State createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Center(
          child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Ishihara1rg.png"),
                    fit: BoxFit.cover),
              )),
        ),
        Center(
          child: Container(
              width: 200,
              height: 80,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter the number',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    )),
              )),
        ),
        Center(
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white70,
                  onPrimary: Colors.black87,
                  padding: EdgeInsets.all(10.0),
                  minimumSize: Size(50.0, 30.0)),
              child: const Text('Next',
                  style: TextStyle(
                    fontSize: 25.0,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Image2())),
            ),
          ),
        )
      ]),
    ));
  }
}

class Image2 extends StatefulWidget {
  const Image2({Key? key}) : super(key: key);

  @override
  _Image2State createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Center(
          child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Ishihara2rg.jpg"),
                    fit: BoxFit.cover),
              )),
        ),
        Center(
          child: Container(
              width: 200,
              height: 80,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter the number',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    )),
              )),
        ),
        Center(
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white70,
                  onPrimary: Colors.black87,
                  padding: EdgeInsets.all(10.0),
                  minimumSize: Size(50.0, 30.0)),
              child: const Text('Next',
                  style: TextStyle(
                    fontSize: 25.0,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Image3())),
            ),
          ),
        )
      ]),
    ));
  }
}

class Image3 extends StatefulWidget {
  const Image3({Key? key}) : super(key: key);

  @override
  _Image3State createState() => _Image3State();
}

class _Image3State extends State<Image3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Center(
          child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Ishihara4rg.png"),
                    fit: BoxFit.cover),
              )),
        ),
        Center(
          child: Container(
              width: 200,
              height: 80,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Next',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    )),
              )),
        ),
        Center(
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white70,
                  onPrimary: Colors.black87,
                  padding: EdgeInsets.all(10.0),
                  minimumSize: Size(50.0, 30.0)),
              child: const Text('Next',
                  style: TextStyle(
                    fontSize: 25.0,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Image5())),
            ),
          ),
        )
      ]),
    ));
  }
}

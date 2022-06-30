import 'package:flutter/material.dart';

import 'green_test.dart';

class Image5 extends StatefulWidget {
  const Image5({Key? key}) : super(key: key);

  @override
  _Image5State createState() => _Image5State();
}

class _Image5State extends State<Image5> {
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
                    image: AssetImage("assets/images/Ishihara3r.png"),
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
                  context, MaterialPageRoute(builder: (context) => Image6())),
            ),
          ),
        )
      ]),
    ));
  }
}

class Image6 extends StatefulWidget {
  const Image6({Key? key}) : super(key: key);

  @override
  _Image6State createState() => _Image6State();
}

class _Image6State extends State<Image6> {
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
                    image: AssetImage("assets/images/Ishihara5r.png"),
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
                  context, MaterialPageRoute(builder: (context) => Image7())),
            ),
          ),
        )
      ]),
    ));
  }
}
// TODO Implement this library.

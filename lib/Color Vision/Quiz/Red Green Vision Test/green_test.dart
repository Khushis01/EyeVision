import 'package:flutter/material.dart';

import 'result_rgtest.dart';

class Image7 extends StatefulWidget {
  const Image7({Key? key}) : super(key: key);

  @override
  _Image7State createState() => _Image7State();
}

class _Image7State extends State<Image7> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Center(
          child: Container(
              margin: EdgeInsets.only(top: 30),
              height: height * 0.4,
              width: width * 0.65,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Ishihara10g.png"),
                    fit: BoxFit.cover),
              )),
        ),
        Center(
          child: Container(
              width: width * 0.5,
              height: height * 0.03,
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
              child: Text('Next',
                  style: TextStyle(
                    fontSize: 25.0,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Image8())),
            ),
          ),
        )
      ]),
    ));
  }
}

class Image8 extends StatefulWidget {
  const Image8({Key? key}) : super(key: key);

  @override
  _Image8State createState() => _Image8State();
}

class _Image8State extends State<Image8> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(children: <Widget>[
        Center(
          child: Container(
              margin: EdgeInsets.only(top: 30),
              height: height * 0.4,
              width: width * 0.65,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Ishihara11g.jpg"),
                    fit: BoxFit.cover),
              )),
        ),
        Center(
          child: Container(
              width: width * 0.5,
              height: height * 0.03,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter the number',
                    hintStyle: TextStyle(
                      fontSize: height * 0.03,
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
              child: Text('Show Result',
                  style: TextStyle(
                    fontSize: height * 0.03,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Result1())),
            ),
          ),
        )
      ]),
    ));
  }
}

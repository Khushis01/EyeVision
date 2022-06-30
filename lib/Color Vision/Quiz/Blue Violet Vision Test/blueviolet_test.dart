import 'package:eye_vision/Color%20Vision/Quiz/Blue%20Violet%20Vision%20Test/result_bvtest.dart';
import 'package:flutter/material.dart';

class Image9 extends StatefulWidget {
  const Image9({Key? key}) : super(key: key);

  @override
  _Image9State createState() => _Image9State();
}

class _Image9State extends State<Image9> {
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
                    image: AssetImage("assets/images/Ishihara13bv.png"),
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
              child: Text('Next',
                  style: TextStyle(
                    fontSize: height * 0.03,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Image10())),
            ),
          ),
        )
      ]),
    ));
  }
}

class Image10 extends StatefulWidget {
  const Image10({Key? key}) : super(key: key);

  @override
  _Image10State createState() => _Image10State();
}

class _Image10State extends State<Image10> {
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
                    image: AssetImage("assets/images/Ishihara14bv.png"),
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
              child: Text('Next',
                  style: TextStyle(
                    fontSize: height * 0.03,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Image11())),
            ),
          ),
        )
      ]),
    ));
  }
}

class Image11 extends StatefulWidget {
  const Image11({Key? key}) : super(key: key);

  @override
  _Image11State createState() => _Image11State();
}

class _Image11State extends State<Image11> {
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
                    image: AssetImage("assets/images/Ishihara15bv.png"),
                    fit: BoxFit.cover),
              )),
        ),
        Center(
          child: Container(
              width: width * 0.5,
              height: height * 0.03,
              margin: EdgeInsets.only(top: 30),
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
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white70,
                  onPrimary: Colors.black87,
                  padding: EdgeInsets.all(10.0),
                  minimumSize: Size(50.0, 30.0)),
              child: Text('Results',
                  style: TextStyle(
                    fontSize: height * 0.03,
                  )),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Result2())),
            ),
          ),
        )
      ]),
    ));
  }
}

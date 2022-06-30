import 'package:eye_vision/Color%20Vision/Quiz/Blue%20Violet%20Vision%20Test/blueviolet_test.dart';
import 'package:flutter/material.dart';

class Result1 extends StatefulWidget {
  const Result1({Key? key}) : super(key: key);

  @override
  _Result1State createState() => _Result1State();
}

class _Result1State extends State<Result1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text("RED GREEN COLOR VISION",
                    style: TextStyle(
                      fontSize: 30,
                    )),
              ),
              Container(
                height: 300,
                width: 300,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey,
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.red, Colors.green])),
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        "This was for red green color vision.If you have been able to identify the nunbers shown this means that you don't have red green color blindness",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 200,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.1),
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white70,
                        onPrimary: Colors.black87,
                        padding: EdgeInsets.all(10.0),
                        minimumSize: Size(30.0, 20.0)),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Image9())),
                    child: Text(
                      "Move to the next test",
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

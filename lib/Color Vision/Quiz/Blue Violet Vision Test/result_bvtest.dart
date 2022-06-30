import 'package:flutter/material.dart';

import '../../../screens.dart';
import '../../homepage1.dart';

class Result2 extends StatefulWidget {
  const Result2({Key? key}) : super(key: key);

  @override
  _Result2State createState() => _Result2State();
}

class _Result2State extends State<Result2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("BLUE VIOLET COLOR VISION",
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
                          colors: [Colors.deepPurple, Colors.blue])),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "People suffering from blue purple color blindness are unable to distinguish blue and purple associated colors. It is difficult for them to say whether a color is blue or purple. This condition is mainly caused due to the improper functioning of cone cells of the retina. Blue cone monochromacy is one example where people have difficulty perceiving blue and the associated colors.",
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
                  minimumSize: Size(30.0, 20.0),
                ),
                child: Text(
                  "End Test",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

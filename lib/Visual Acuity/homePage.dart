import 'package:eye_vision/Visual%20Acuity/instructions.dart';
import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';

class VsHomePage extends StatefulWidget {
  const VsHomePage({Key? key}) : super(key: key);

  @override
  _VsHomePageState createState() => _VsHomePageState();
}

class _VsHomePageState extends State<VsHomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.cyan])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          //child: screens[currentIndex],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 200),
                    alignment: Alignment.topRight,
                    height: height * .3,
                    width: width * .5,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              margin: EdgeInsets.only(top: width * 0.1),
                              width: width * .5,
                              height: height * 0.15,
                              decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [Colors.white, Colors.cyan])),
                            )),
                        Image.asset(
                          'assets/images/eye-test1.png',
                          width: width * .5,
                          height: height * .5,
                        ),
                      ],
                    ),
                  ),
                ]),
                Container(
                    child: Padding(
                        padding: EdgeInsets.only(
                            right: width * .3, bottom: height * .01),
                        child: Text('Visual Acuity',
                            style: TextStyle(
                              //fontFamily: 'Playfair Display SC',
                              fontSize: 40,
                              color: Colors.white,
                            )))),
                Container(
                  height: height * 0.01,
                  width: width * 0.35,
                  padding: EdgeInsets.only(left: 150, bottom: 50),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.white, Colors.white],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )),
                ),
                // Row(children: <Widget>[
                Container(
                    width: 300,
                    height: 220,
                    margin: EdgeInsets.only(top: 10, right: 60),
                    child: Padding(
                        padding: EdgeInsets.only(
                            right: 20, top: 20, left: 10, bottom: 20),
                        child: Text(
                            '''Do you sometimes screw up your eyes to read signs properly?\nDoes your vision go fuzzy when you read?\nWhy not start by testing your vision online. It’s quick and simple.''',
                            style: TextStyle(
                              //fontFamily: 'Playfair Display SC',
                              fontSize: 19,
                              color: Colors.white,
                            )))),
                //   SizedBox(
                //     height: 220,
                //     width: 40,
                //   ),
                // ]),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Instructions())),
                      style: ElevatedButton.styleFrom(
                          //padding: ,
                          // minimumSize: Size(50, 40),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shadowColor: Colors.white60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                )
              ]),
          // ]),
        ),
      ),
    );
  }
}

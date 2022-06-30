import 'package:flutter/material.dart';

class Posture extends StatefulWidget {
  const Posture({Key? key}) : super(key: key);

  @override
  _PostureState createState() => _PostureState();
}

class _PostureState extends State<Posture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("assets/images/posture.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      "Here are some tips to share on how to take care of your eyes and posture while you work and study.\n\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    Container(
                      child: Text(
                        "Blink\n",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: Text(
                      "Humans normally blink about 15 times in one minute. However, studies show that we only blink about 5 to 7 times in a minute while using computers and other digital screen devices. Blinking is the eye’s way of getting the moisture it needs on its surface.Make a conscious effort to blink as often as possible. This keeps the surface of your eyes from drying out.\n\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    Container(
                      child: Text(
                        "2.Follow the 20-20-20 rule\n",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: Text(
                      "Take regular breaks using the “20-20-20” rule: every 20 minutes, shift your eyes to look at an object at least 6 meters away, for at least 20 seconds.\n\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    Container(
                      child: Text(
                        "3.Adjust the brightness and contrast on your computer or device\n",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        "If your screen glows brighter than your surroundings, your eyes have to work harder to see. Adjust your screen brightness to match the level of light around you. Also, try increasing the contrast on your screen to reduce eye strain.\n\n",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        "4.Sit 25 inches away from the screen\n",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Also,position the screen so your eye gazes slightly downward, not straight ahead or up.\n",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        "5.Have the computer monitor screen set at eye level or slightly lower\n",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        " This reduces strain on the eyes as well as strain on the neck as we aim to have the neck in a neutral position",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ]),
            ),
          ]),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EyeWear extends StatefulWidget {
  const EyeWear({Key? key}) : super(key: key);

  @override
  _EyeWearState createState() => _EyeWearState();
}

class _EyeWearState extends State<EyeWear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("assets/images/eyeglasses.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.lime,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      "1. Keep your spectacle lenses clean all the time: The lenses should be absolutely clean and clear to have unrestricted vision. Always carry a lens cleaner in your bag.\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    Container(
                        child: Text(
                      "2. Always wear spectacles: Some people are careless about wearing spectacles or feel irritated by it and avoid wearing it. This careless approach can weaken the eyes further.",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    Container(
                        child: Text(
                      "3.Take regular breaks using the “20-20-20” rule: every 20 minutes, shift your eyes to look at an object at least 6 meters away, for at least 20 seconds.\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                    Container(
                      child: Text(
                        "4.If your screen glows brighter than your surroundings, your eyes have to work harder to see. Adjust your screen brightness to match the level of light around you. Also, try increasing the contrast on your screen to reduce eye strain.\n",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        "5.Use spectacle lenses offering UV protection: Each year 3 million people go blind from prolonged UV exposure. But, while we all believe in wearing sunscreen for the skin, there is little concern about sun protection for the eyes.\n",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        "6.To avoid eye strain, one should have a light source while reading: Never read in a dark room.\n",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
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

import 'package:flutter/material.dart';

class EatWell extends StatefulWidget {
  const EatWell({Key? key}) : super(key: key);

  @override
  _EatWellState createState() => _EatWellState();
}

class _EatWellState extends State<EatWell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: SafeArea(
        child: ListView(children: [
          Column(children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("assets/images/eatwell.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(children: <Widget>[
                Container(
                    child: Text(
                  "Maintaining a well-balanced, healthy diet is key to keeping your eyes healthy, and may help reduce your risk for developing eye conditions.\n\nSerious eye conditions may be avoided if you include foods that contain a range of vitamins, nutrients, and minerals, known as antioxidants.\n\nEye conditions that you may be able to prevent with a healthy diet include:cataracts, which cause cloudy visionage-related macular degeneration, which can limit your eyesightglaucomadry eyespoor night vision.\n",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
                Container(
                    child: Text(
                  "Your eyes need many types of antioxidants to stay healthy.\nThese include: luteinzeaxanthin vitamins A, C, E beta-caroteneomega-3 fatty acids zinc\n",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
                Container(
                    child: Text(
                  "Here are seven of the best foods for your eyes: \n\n 1.Eggs\n 2. Almonds.\n 3.Eggs \n 4. Dairy\n 5.Carrot \n 6. Kale\n 7.Oranges\n",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
                Container(
                  child: Text(
                    "Other ways you can keep your eyes healthy include:\n\n1. Visiting an eye doctor every one to two years\n2.Wearing sunglasses when outdoors\n3.Avoiding smoking \n4. Maintaining a healthy weight\n5. Wearing protective eye gear when engaging in sports, hobbies, home projects, or work-related activities. \n6. Managing blood sugar",
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

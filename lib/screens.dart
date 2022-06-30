import 'package:flutter/material.dart';
import 'Color Vision/homepage1.dart';
import 'Eye Health/mainPage.dart';
import 'visual acuity/homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    VsHomePage(),
    CbHomePage(),
    MainScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light, primaryColor: Colors.blueGrey),
        home: Scaffold(
            body: IndexedStack(
              index: currentIndex,
              children: screens,
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black54,
                showUnselectedLabels: false,
                selectedFontSize: 17,
                unselectedFontSize: 12,
                iconSize: 35,
                currentIndex: currentIndex,
                onTap: (index) => setState(() => currentIndex = index),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assignment_outlined),
                      label: 'Visual Acuity'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.color_lens_outlined),
                      label: 'Colour Blindness'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.medication_outlined),
                      label: 'Eye Health'),
                ])));
  }
}

import 'dart:async';

import 'package:eye_vision/Authentication%20Pages/SignIn.dart';
import 'package:eye_vision/screens.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Timer(
    //     Duration(seconds: 5),
    //     () => Navigator.of(context).pushReplacement(
    //         MaterialPageRoute(builder: (BuildContext context) => SignIn())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: SignIn(),
        duration: 5000,
        imageSize: 100,
        imageSrc: "assets/images/logo-modified.png",
        text: "EYE VISION",
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          letterSpacing: 2,
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        colors: [
          Colors.white60,
          Colors.white,
          Colors.white70,
        ],
        backgroundColor: Colors.cyan[900],
      ),
    );
  }
}

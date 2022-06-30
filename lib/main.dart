import 'package:eye_vision/Provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Splash Screen/splash_screen.dart';

void main() {
// async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: Providers.providers(),
    //child:
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
    //   ),
    // );
  }
}

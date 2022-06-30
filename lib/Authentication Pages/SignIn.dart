import 'dart:io';
import 'package:eye_vision/Provider/firebaseSignInMethods.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import '../screens.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    //final firesignIn = Provider.of<FirebaseSignInMethods>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                height: 250,
                width: width * .9,
                child: Image(image: AssetImage("assets/images/signup.png"))),
            Container(
              child: Text(
                "EYE VISION",
                style: TextStyle(
                  fontSize: 30,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Enter the Email Id" : null;
                  },
                  decoration: InputDecoration(hintText: "Email Id"),
                  onChanged: (val) {
                    email = val;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Enter the Email Id" : null;
                  },
                  decoration: InputDecoration(hintText: "Password"),
                  onChanged: (val) {
                    password = val;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text(
                "Don't have an account?",
                style: TextStyle(),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())),

                  // () async {
                  //   UserCredential loggedInUser =
                  //       await firesignIn.signInWithGoogle();
                  // print(loggedInUser.user!.displayName!);
                  //},
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/googlelogo.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 35,
                //padding: EdgeInsets.all(20),
                // decoration: BoxDecoration(boxShadow: [
                //   BoxShadow(
                //     color: Colors.blueGrey,
                //     blurRadius: 5.0,
                //     spreadRadius: 1.0,
                //     offset: Offset(5.0, 5.0),
                //   ),
                // ]),
                margin: EdgeInsets.only(top: 30),
                child: Card(
                  elevation: 5,
                  child: Text(
                    "Sign in with Google",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

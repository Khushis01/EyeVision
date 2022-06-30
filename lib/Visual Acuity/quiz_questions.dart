// import 'dart:async';
// import 'dart:convert';
//
// import 'package:eye_vision/provider/getalpha.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'options.dart';
//
// class VsQuestions extends StatefulWidget {
//   const VsQuestions({Key? key}) : super(key: key);
//
//   @override
//   _VsQuestionsState createState() => _VsQuestionsState();
// }
//
// class _VsQuestionsState extends State<VsQuestions> {
//   @override
//   void initState() {
//     Provider.of<Alphabets>(context, listen: false).getalpha();
//     navigateToOptions();
//     super.initState();
//   }
//
//   navigateToOptions() async {
//     Timer(Duration(seconds: 5), () {
//       // 5s over, navigate to a new page
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => Result()));
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final alphabet = Provider.of<Alphabets>(context);
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Container(
//           child: Text(
//             alphabet.getResponseJson().data![0].letter!,
//             style: TextStyle(fontSize: 100),
//           ),
//         ),
//       ),
//     );
//   }
// }

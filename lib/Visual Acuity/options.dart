// import 'dart:math';
// import 'package:eye_vision/constants/constants.dart';
// import 'package:eye_vision/provider/getquestions.dart';
// import 'package:eye_vision/provider/models/questionsmodel.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'homePage.dart';
//
// class Result extends StatefulWidget {
//   const Result({Key? key}) : super(key: key);
//
//   @override
//   _ResultState createState() => _ResultState();
// }
//
// class _ResultState extends State<Result> {
//   void initState() {
//     Provider.of<Questions>(context, listen: false).getquestions();
//     generateRandomNumber();
//     super.initState();
//   }
//
//   void dispose() {
//     super.dispose();
//   }
//
//   void generateRandomNumber() {
//     var random = Random();
//
//     // Printing Random Number between 1 to 100 on Terminal Window.
//     // print(random.nextInt(100));
//
//     Constants.rand = random.nextInt(4);
//   }
//
//   Future<bool> _onBackPress() async {
//     return await showCupertinoModalPopup(
//         context: context,
//         builder: (context) => CupertinoActionSheet(
//               title: Text("Do you want to exit the test?"),
//               cancelButton: CupertinoActionSheetAction(
//                 child: const Text("Yes"),
//                 isDefaultAction: true,
//                 onPressed: () => Navigator.of(context).pushAndRemoveUntil(
//                     MaterialPageRoute(builder: (context) => VsHomePage()),
//                     (Route<dynamic> route) => false),
//               ),
//               //message: Text("Have you reviewed the app on Playstore yet ?"),
//               actions: <Widget>[
//                 CupertinoActionSheetAction(
//                     child: Text("Share the App"), onPressed: () {}),
//               ],
//             ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final question = Provider.of<Questions>(context);
//     final mq = MediaQuery.of(context);
//     final width = mq.size.width;
//     final height = mq.size.height;
//     return WillPopScope(
//       onWillPop: _onBackPress,
//       child: Scaffold(
//           body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Positioned(
//             top: height * .1,
//             left: 0.0,
//             right: 0.0,
//             child: Align(
//               alignment: Alignment.center,
//               child: Text(
//                 question.getResponseJson().question!,
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: height * .2,
//             left: 0.0,
//             right: 0.0,
//             bottom: 0.0,
//             child: Container(
//               height: height,
//               width: width,
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 children: List.generate(
//                   4,
//                   (i) {
//                     List<Datum> ques = question.getResponseJson().data!
//                       ..shuffle();
//                     return (i != 3)
//                         ? Padding(
//                             padding: const EdgeInsets.all(30.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.black12,
//                                       blurRadius: 5.0,
//                                       spreadRadius: 1.0,
//                                       offset: Offset(5.0, 5.0),
//                                     ),
//                                   ]),
//                               child: Center(
//                                 child: (i == Constants.rand)
//                                     ? Text(Constants.correctAnswer!,
//                                         style: TextStyle(
//                                           fontSize: width * ques[i].fontsize!,
//                                         ))
//                                     : (ques[i].alphabet ==
//                                             Constants.correctAnswer)
//                                         ? Text(ques[i++].alphabet!,
//                                             style: TextStyle(fontSize: 20))
//                                         : Text(ques[i].alphabet!,
//                                             style: TextStyle(
//                                               fontSize:
//                                                   width * ques[i].fontsize!,
//                                             )),
//                               ),
//                             ),
//                           )
//                         : Padding(
//                             padding: const EdgeInsets.all(30.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.black12,
//                                       blurRadius: 5.0,
//                                       spreadRadius: 1.0,
//                                       offset: Offset(5.0, 5.0),
//                                     ),
//                                   ]),
//                               child: Center(
//                                 child: Text('BLUR',
//                                     style: TextStyle(
//                                       fontSize: width * .1,
//                                     )),
//                               ),
//                             ),
//                           );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

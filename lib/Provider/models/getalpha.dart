// import 'dart:convert';
// import 'dart:math';
// import 'package:eye_vision/constants/constants.dart';
// import 'package:eye_vision/provider/models/alphamodel.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class Alphabets with ChangeNotifier {
//   Alphabets();
//
//   AlphaModel alphas = AlphaModel();
//
//   Future<AlphaModel> getalpha() async {
//     final String response =
//         await rootBundle.loadString('assets/data/alpha.json');
//     // final data = await json.decode(response);
//     print(response);
//
//     if (response.isNotEmpty) {
//       Map<String, dynamic> json = jsonDecode(response);
//       alphas = AlphaModel.fromJson(json);
//       print('API Status = ' + alphas.data![1].letter!);
//     }
//
//     var rand = Random();
//     int i = rand.nextInt(alphas.data!.length);
//     List<Datum> alpha = alphas.data!..shuffle();
//
//     Constants.correctAnswer = alpha[i].letter!;
//     // _isLoading = false;
//     notifyListeners();
//     return alphas;
//
//     // print(data.toString());
//   }
//
//   AlphaModel getResponseJson() => alphas;
// }

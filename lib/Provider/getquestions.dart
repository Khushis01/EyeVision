import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/questionsmodel.dart';

class Questions with ChangeNotifier {
  Questions();

  QuestionModel alphas = QuestionModel();

  Future<QuestionModel> getquestions() async {
    final String response =
        await rootBundle.loadString('assets/data/questions.json');
    // final data = await json.decode(response);
    print(response);

    if (response.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(response);
      alphas = QuestionModel.fromJson(json);
      print('API Status = ' + alphas.question!);
    }
    // _isLoading = false;
    notifyListeners();
    return alphas;

    // print(data.toString());
  }

  QuestionModel getResponseJson() => alphas;
}

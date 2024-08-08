import 'package:flutter/material.dart';
import 'package:questionnaire/models/model.dart';
import 'package:provider/provider.dart';

class QuestionModel with ChangeNotifier{
  List<Question> questions = [
    Question('Question 01\nWhat is your name?'),
    Question('Question 02\nHow old are you?'),
    Question('Question 03\nDo you have a girlfriend?'),
  ];
  int currentPage = 0;

  void updateAnswer(int index, String answer){
    questions[index].answer = answer;
    notifyListeners();
  }

  void nextPage(){
    currentPage++;
    notifyListeners();
  }
}
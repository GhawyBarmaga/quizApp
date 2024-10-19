import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/models/quiz_model.dart';

class QuizController extends GetxController {
  int questionNow = 1;
  List<QuestionModel> listQuistion = [
    QuestionModel(question: "what is your job", correctAnswer: 0, listAnswers: [
      "flutter developer",
      "doctor",
      "teacher",
    ]),
    QuestionModel(
        question: "what is make flutter ",
        correctAnswer: 2,
        listAnswers: [
          "microsoft",
          "oracle",
          "google",
          "amazon",
        ]),
    QuestionModel(
        question: "What is the capital of France?",
        correctAnswer: 1,
        listAnswers: [
          "Berlin",
          "Paris",
          "London"
              "Rome",
        ]),
    QuestionModel(
        question: "Who wrote the play Romeo and Juliet",
        correctAnswer: 0,
        listAnswers: [
          "William Shakespeare",
          "me",
          "Charles",
          "ahmed",
        ]),
  ];
  List<String> answers = ["1985", "1976", "1980", "1987"];
  PageController pageController = PageController();
  int i = -1;
  
}

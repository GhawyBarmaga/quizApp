import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:quiz_app/controller/quizcontroller.dart';


import '../widgets/question_screen.dart';

class QuizScreen extends StatefulWidget {
   final String name;
 
  const QuizScreen({super.key,  required this.name});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('efeee5'),
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: HexColor('efeee5'),
        elevation: 0.0,
        title: GetBuilder<QuizController>(
          builder: (QuizController controller) => Text(
            "${controller.questionNow}/${controller.listQuistion.length}",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap: () => Get.back(),
            child: const Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                Text("previous",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
      body: GetBuilder<QuizController>(
        builder: (QuizController controller) => PageView.builder(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>
              buildQuiz(controller.listQuistion[index], index),
          itemCount: controller.listQuistion.length,
        ),
      ),
    );
  }
}

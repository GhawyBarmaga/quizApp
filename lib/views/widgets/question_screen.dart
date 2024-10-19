import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/models/quiz_model.dart';

import '../../controller/quizcontroller.dart';
import 'custom_options_screen.dart';

Widget buildQuiz(QuestionModel question, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: SizedBox(
      width: double.infinity,
      child: GetBuilder<QuizController>(
        builder: (QuizController controller) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: Get.height * 0.3,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 100,
                              blurStyle: BlurStyle.outer,
                              spreadRadius: -50,
                              offset: Offset(0, 5))
                        ])),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: -50,
                    child: CircularPercentIndicator(
                      animation: true,
                      restartAnimation: true,
                      animationDuration: 30000,
                      radius: 43.0,
                      lineWidth: 5.0,
                      percent: 1.0,
                      center: const Text(
                        "30%",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      progressColor: Colors.deepPurple,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          controller.listQuistion[index].question,
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CustomOptions(
                        onTap: () {
                          controller.i = index;
                          controller.update();
                        },
                        option: question.listAnswers[index],
                        isSelected: controller.i == index ? true : false,
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: controller.listQuistion[0].listAnswers.length),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    controller.pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                    controller.questionNow++;
                    controller.update();
                  },
                  child: const Text("Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    ),
  );
}

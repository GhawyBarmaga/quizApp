import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuizScreen extends StatelessWidget {
  final String name;
  const QuizScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('efeee5'),
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: HexColor('efeee5'),
        elevation: 0.0,
        title: const Text(
          "7/10",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          width: double.infinity,
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
                        child: const Text(
                          "dfdsfsfsfdfjfgjhfhgfhfhfghcghfhfhfhgfhfhfhfhfhfhfhfhgfhgfhfhgfhfhgfhfhgfhfhgfhgf",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              wordSpacing: -2),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

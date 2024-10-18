import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../quiz_screen.dart';
import '../shared/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    final fkey = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: HexColor('efeee5'),
        body: Form(
          key: fkey,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "?",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 300,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomForm(
                    validator: (value) {
                      if (value == null || name.text.isEmpty) {
                        return "Enter Ur Name";
                      }
                      return null;
                    },
                    text: " Write Your Name",
                    type: TextInputType.emailAddress,
                    name: name,
                    sufxicon: const Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 30.0),
                SizedBox(
                  width: Get.width * 0.8,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        if (fkey.currentState!.validate()) {
                          Get.off(() => QuizScreen(name: name.text));
                        }
                      },
                      child: const Center(
                          child: Text(
                        " Start Quiz ",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ))),
                ),
              ],
            ),
          ),
        ));
  }
}

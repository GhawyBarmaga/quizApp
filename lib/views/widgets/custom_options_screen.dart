import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomOptions extends StatelessWidget {
  final String option;
  final bool isSelected;
 final void Function()? onTap;

  const CustomOptions({
    super.key,
    required this.option,
    required this.onTap,
    this.isSelected=false
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: double.infinity,
        height: Get.height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                option,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child:isSelected==true?const Icon(CupertinoIcons.checkmark_alt_circle_fill): Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.deepPurple)),
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

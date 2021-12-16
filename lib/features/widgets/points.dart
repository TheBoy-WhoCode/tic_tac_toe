import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/features/constants/custom_textstyle.dart';
import 'package:tic_tac_toe/features/controllers/controller.dart';

class Points extends StatelessWidget {
  Points({Key? key}) : super(key: key);

  final controller = Get.find<BasicController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "Player O",
                style: customTextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                controller.oScore.toString(),
                style: customTextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                "Player X",
                style: customTextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                controller.xScore.toString(),
                style: customTextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

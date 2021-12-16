import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/features/constants/custom_textstyle.dart';
import 'package:tic_tac_toe/features/controllers/controller.dart';

class Grid extends StatelessWidget {
  Grid({Key? key}) : super(key: key);

  final controller = Get.find<BasicController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        itemCount: 9,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.tapped(index);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[500]!),
              ),
              child: Center(
                child: Text(
                  controller.initial[index],
                  style: customTextStyle(
                    fontSize: 40,
                    color: controller.initial[index] == 'X'
                        ? Colors.white
                        : Colors.red,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

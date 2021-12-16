import 'package:flutter/material.dart';
import 'package:tic_tac_toe/features/constants/custom_textstyle.dart';

class Turn extends StatelessWidget {
  const Turn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Turn O",
        style: customTextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

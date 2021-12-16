import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/features/constants/custom_textstyle.dart';
import 'package:tic_tac_toe/features/controllers/controller.dart';
import 'package:tic_tac_toe/features/widgets/grid.dart';
import 'package:tic_tac_toe/features/widgets/points.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put<BasicController>(BasicController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: () {
              controller.clearBoard();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
        title: Text(
          "Tic Tac Toe",
          style: customTextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Points(),
          Grid(),
        ],
      ),
    );
  }
}

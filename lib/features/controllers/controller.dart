import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/features/views/home_screen.dart';

class BasicController extends GetxController {
  int xScore = 0;
  int oScore = 0;
  bool turn = true;
  RxInt filledBoxes = 0.obs;
  final List<String> initial = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  void tapped(int index) {
    if (turn && initial[index] == '') {
      initial[index] = "O";
      filledBoxes += 1;
    } else if (!turn && initial[index] == '') {
      initial[index] = "X";
      filledBoxes += 1;
    }
    turn = !turn;
    checkWinner();
  }

  void checkWinner() {
    // Check first row
    if (initial[0] == initial[1] &&
        initial[0] == initial[2] &&
        initial[0] != "") {
      _showAlertDialog("Winner", initial[0]);
      return;
    }

    // Check Second row
    if (initial[3] == initial[4] &&
        initial[3] == initial[5] &&
        initial[3] != "") {
      _showAlertDialog("Winner", initial[3]);
      return;
    }

    // Check Third row
    if (initial[6] == initial[7] &&
        initial[6] == initial[8] &&
        initial[6] != "") {
      _showAlertDialog("Winner", initial[6]);
      return;
    }

    // Check first column
    if (initial[0] == initial[3] &&
        initial[0] == initial[6] &&
        initial[0] != "") {
      _showAlertDialog("Winner", initial[0]);
      return;
    }

    // Check Second column
    if (initial[1] == initial[4] &&
        initial[1] == initial[7] &&
        initial[1] != "") {
      _showAlertDialog("Winner", initial[1]);
      return;
    }

    // Check Third column
    if (initial[2] == initial[5] &&
        initial[2] == initial[8] &&
        initial[2] != "") {
      _showAlertDialog("Winner", initial[2]);
      return;
    }

    // Check Diagonal 1
    if (initial[0] == initial[4] &&
        initial[0] == initial[8] &&
        initial[0] != "") {
      _showAlertDialog("Winner", initial[0]);
      return;
    }

    // Check Diagonal 2
    if (initial[2] == initial[4] &&
        initial[2] == initial[6] &&
        initial[2] != "") {
      _showAlertDialog("Winner", initial[2]);
      return;
    }

    if (filledBoxes == 9) {
      _showAlertDialog('Draw', '');
    }
  }

  void _showAlertDialog(String title, String winner) {
    Get.defaultDialog(
      onConfirm: () {
        clearBoard();
        Get.off(() => HomeScreen());
      },
      title: title,
      content: winner == ''
          ? const Text('The match ended in a draw')
          : Text('The winner is ${winner.toUpperCase()}'),
    );

    if (winner == 'o') {
      oScore += 1;
    } else if (winner == 'x') {
      xScore += 1;
    }
  }

  void clearBoard() {
    for (int i = 0; i < 9; i++) {
      initial[i] = '';
    }
    filledBoxes = 0.obs;
  }
}

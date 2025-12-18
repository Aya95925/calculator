import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/screens/custom_xo_bottom.dart';
import 'package:flutter_ass2/ui/screens/scaffold_widget.dart';
import 'package:flutter_ass2/ui/utils/colors.dart';
import 'package:flutter_ass2/ui/utils/styles.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});
  static const String gemeBord = 'game_board';

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> board = ['', '', '', '', '', '', '', '', ''];

  int counter = 0;

  late Timer timer;
  late String firsPlayerSymbol;
  late String secondPlayerSymbol;
  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (time) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    firsPlayerSymbol = ModalRoute.of(context)!.settings.arguments as String;
    secondPlayerSymbol = firsPlayerSymbol == 'x' ? 'o' : 'x';
    return ScaffoldWidget(
      child: Column(
        children: [
          SizedBox(height: 25),
          buildTimer(),
          SizedBox(height: 32),
          buildText(),
          SizedBox(height: 24),
          buildGame(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  buildTimer() => Container(
    margin: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(44),
      color: AppColor.appWhite,
    ),
    width: double.infinity,
    height: 76,
    child: Center(
      child: Text(fetchTimer(timer.tick), style: AppStyles.semiBold600Black32),
    ),
  );
  String fetchTimer(int second) {
    int min = second ~/ 60;
    int remaningSecond = second - (min * 60);
    return '${min < 10 ? '0$min' : min}:${remaningSecond < 10 ? '0$remaningSecond' : remaningSecond}';
  }

  buildText() {
    return Text(
      'Player ${counter.isEven ? '1' : '2'}’s Turn',
      style: AppStyles.bold700white36,
    );
  }

  buildGame() {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColor.appWhite,
              borderRadius: BorderRadius.circular(44),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomXoBottom(
                        symbol: board[0],
                        onCLick: onPlayerClick,
                        bottom: 0,
                      ),
                      CustomXoBottom(
                        symbol: board[1],
                        onCLick: onPlayerClick,
                        bottom: 1,
                      ),
                      CustomXoBottom(
                        symbol: board[2],
                        onCLick: onPlayerClick,
                        bottom: 2,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomXoBottom(
                        symbol: board[3],
                        onCLick: onPlayerClick,
                        bottom: 3,
                      ),
                      CustomXoBottom(
                        symbol: board[4],
                        onCLick: onPlayerClick,
                        bottom: 4,
                      ),
                      CustomXoBottom(
                        symbol: board[5],
                        onCLick: onPlayerClick,
                        bottom: 5,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomXoBottom(
                        symbol: board[6],
                        onCLick: onPlayerClick,
                        bottom: 6,
                      ),
                      CustomXoBottom(
                        symbol: board[7],
                        onCLick: onPlayerClick,
                        bottom: 7,
                      ),
                      CustomXoBottom(
                        symbol: board[8],
                        onCLick: onPlayerClick,
                        bottom: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalDivider(color: Colors.black, thickness: 1.2),
                VerticalDivider(color: Colors.black, thickness: 1.2),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Divider(color: Colors.black, thickness: 1),
                  Divider(color: Colors.black, thickness: 1),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPlayerClick(int index) {
    // // print('index $index');
    if (board[index].isNotEmpty) {
      return;
    }

    board[index] = counter.isEven ? firsPlayerSymbol : secondPlayerSymbol;

    if (CheckBoard()) {
      clearBoard();
    }
    counter++;
    setState(() {});
  }

  clearBoard() {
    board = ['', '', '', '', '', '', '', '', ''];
    counter = 0;
  }

  bool CheckBoard() {
    String symbol = counter.isEven ? firsPlayerSymbol : secondPlayerSymbol;
    //rows
    if (board[0] == symbol && board[1] == symbol && board[2] == symbol) {
      return true;
    }
    if (board[3] == symbol && board[4] == symbol && board[5] == symbol) {
      return true;
    }
    if (board[6] == symbol && board[7] == symbol && board[8] == symbol) {
      return true;
    }
    //column
    if (board[0] == symbol && board[3] == symbol && board[6] == symbol) {
      return true;
    }
    if (board[1] == symbol && board[4] == symbol && board[7] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[5] == symbol && board[8] == symbol) {
      return true;
    }
    //diagonal
    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[4] == symbol && board[6] == symbol) {
      return true;
    }
    return false;
  }
}

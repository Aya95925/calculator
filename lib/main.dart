import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/screens/Game_board.dart';
import 'package:flutter_ass2/ui/screens/xo_srarting.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: XoSrarting.start,
      routes: {
        GameBoard.gemeBord: (_) => GameBoard(),
        XoSrarting.start: (_) => XoSrarting(),
      },

      debugShowCheckedModeBanner: false,
      home: GameBoard(),
    );
  }
}

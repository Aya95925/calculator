import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/screens/game_board.dart';
import 'package:flutter_ass2/ui/utils/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.image, required this.symbol});
  final String image;
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, GameBoard.gemeBord, arguments: symbol);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: AppColor.appWhite,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Image.asset(image),
        ),
      ),
    );
  }
}

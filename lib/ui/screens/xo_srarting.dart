import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/screens/scaffold_widget.dart';
import 'package:flutter_ass2/ui/utils/app_assets.dart';
import 'package:flutter_ass2/ui/utils/styles.dart';

class XoSrarting extends StatelessWidget {
  const XoSrarting({super.key});
  static String start = 'xo_Gaming';
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          Image.asset(
            width: double.infinity,
              // height: double.infinity,
              AppAssets.tikTakToe, fit: BoxFit.fill),
          Align(
            alignment: AlignmentGeometry.center,
            child: Text(
              'Tik-Tak-Toe',
              style: AppStyles.semiBold600Black32.copyWith(color: Colors.white,fontSize: 36),
            ),
          ),
        ],
      ),
    );
  }
}

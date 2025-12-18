import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/screens/custom_container.dart';

import 'package:flutter_ass2/ui/screens/scaffold_widget.dart';
import 'package:flutter_ass2/ui/utils/app_assets.dart';

import 'package:flutter_ass2/ui/utils/styles.dart';

class XoSrarting extends StatelessWidget {
  const XoSrarting({super.key});
  static String start = 'xo_Gaming';
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.topCenter,
            children: [
              Image.asset(
                width: double.infinity,
                // height: double.infinity,
                AppAssets.tikTakToe,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: Text(
                  'Tik-Tak-Toe',
                  style: AppStyles.semiBold600Black32.copyWith(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            'pick who goes first?',
            style: AppStyles.bold700white36.copyWith(fontSize: 28),
          ),
          // SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(image: AppAssets.xImage, symbol: 'x'),
              CustomContainer(image: AppAssets.oImage, symbol: '0'),
            ],
          ),
        ],
      ),
    );
  }
}

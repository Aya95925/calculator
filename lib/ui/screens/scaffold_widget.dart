import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/utils/colors.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
          colors: [AppColor.appblue, AppColor.appdarkBluu],
        ),
      ),
      child: Scaffold(backgroundColor: Colors.transparent, body: child),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/utils/colors.dart';

abstract final class AppStyles {
  static const TextStyle semiBold600Black32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const TextStyle bold700white36 = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColor.appWhite,
  );
}

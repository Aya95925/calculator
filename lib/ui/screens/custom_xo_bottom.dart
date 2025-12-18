import 'package:flutter/material.dart';
import 'package:flutter_ass2/ui/utils/app_assets.dart';

class CustomXoBottom extends StatelessWidget {
  const CustomXoBottom({
    super.key,
    required this.symbol,
    required this.onCLick,
    required this.bottom,
  });

  final String symbol;
  final Function onCLick;
  final int bottom;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onCLick(bottom),
          child: Container(
            alignment: Alignment.center,
            child: symbol.isEmpty
                ? const SizedBox()
                : Image.asset(
                    symbol == 'x' ? AppAssets.xImage : AppAssets.oImage,
                    fit: BoxFit.contain,
                  ),
          ),
        ),
      ),
    );
  }
}

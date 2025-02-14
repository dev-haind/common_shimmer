import 'package:common_shimmer/common_shimmer.dart';
import 'package:flutter/material.dart';

class TextShimmer extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? baseColor;
  final Color? highlightColor;

  const TextShimmer({
    super.key,
    required this.text,
    this.textStyle,
    this.baseColor,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.black12,
      highlightColor: highlightColor ?? Colors.white,
      child: Text(
        text,
        style: textStyle ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

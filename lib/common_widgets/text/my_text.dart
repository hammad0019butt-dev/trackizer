import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final FontWeight textWeight;
  final double? letterSpacing;

  const MyText({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.textWeight,
    this.letterSpacing
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
        letterSpacing: letterSpacing
      ),
    );
  }
}

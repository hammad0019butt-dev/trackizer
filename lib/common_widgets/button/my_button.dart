import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';

class MyButton {
  // Primary Button
  static Widget primaryButton({
    required String title,
    required VoidCallback onPressed,
    required String imgPath,
    required bool isElevation,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 280,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(image: AssetImage("assets/images/$imgPath")),
          boxShadow: isElevation == true
              ? <BoxShadow>[
                  BoxShadow(
                    color: TColor.secondary.withAlpha(80),
                    offset: Offset(0, 7),
                    blurRadius: 10,
                  ),
                ]
              : <BoxShadow>[
                  BoxShadow(
                    color: Colors.transparent,
                    offset: Offset(0, 7),
                    blurRadius: 0,
                  ),
                ],
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

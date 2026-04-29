import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/text/my_text.dart';

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

  // Social Button
  static Widget socialButton({
    required String title,
    required VoidCallback onPressed,
    required String imgPath,
    required bool isElevation,
    required Color shadowColor,
    required String iconPath,
    Color? iconColor,
    Color? titleColor,
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
                    color: shadowColor,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            Image.asset(
              "assets/images/$iconPath",
              height: 18,
              width: 18,
              color: iconColor,
            ),

            SizedBox(width: 10),

            // Text
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Segment Button
  static Widget mySegmentButton({
    required String title,
    required VoidCallback onPressed,
    required bool isActive,
    required double titleSize,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: isActive == true
            ? BoxDecoration(
                color: TColor.grey60.withAlpha(44),
                border: Border.all(color: TColor.border),
                borderRadius: BorderRadius.circular(14),
              )
            : null,

        alignment: Alignment.center,

        child: MyText(
          text: title,
          textColor: isActive == true ? TColor.primaryText : TColor.grey40,
          textSize: 12,
          textWeight: FontWeight.w600,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}

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
    double? letterSpacing,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: isActive == true
            ? BoxDecoration(
                color: TColor.grey60.withAlpha(50),
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
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }

  // Subcription Button
  static Widget subscriptionButton({
    required Map sObj,
    required VoidCallback onPressed,
    required double titleSize,
    required double priceSize,
    Color? titleColor,
    Color? priceColor,
    FontWeight? titleWeight,
    FontWeight? priceWeight,
    double? titleSpacing,
    double? priceSpacing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          height: 64,
          decoration: BoxDecoration(
            // color: TColor.grey60.withAlpha(44),
            border: Border.all(color: TColor.border),
            borderRadius: BorderRadius.circular(20),
          ),

          alignment: Alignment.center,

          child: Row(
            children: [
              // Logo
              Image.asset(sObj["icon"], width: 54, height: 54),

              SizedBox(width: 8),

              // Title
              Expanded(
                child: MyText(
                  text: sObj["name"],
                  textColor: titleColor!,
                  textSize: titleSize,
                  textWeight: titleWeight!,
                  letterSpacing: titleSpacing,
                ),
              ),

              SizedBox(width: 8),

              // Price
              MyText(
                text: "\$${sObj["price"]}",
                textColor: priceColor!,
                textSize: priceSize,
                textWeight: priceWeight!,
                letterSpacing: priceSpacing,
              ),

              SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }

  // Bills Button
  static Widget billsButton({
    required Map sObj,
    required VoidCallback onPressed,
    required double titleSize,
    required double priceSize,
    Color? titleColor,
    Color? priceColor,
    FontWeight? titleWeight,
    FontWeight? priceWeight,
    double? titleSpacing,
    double? priceSpacing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          height: 64,
          decoration: BoxDecoration(
            // color: TColor.grey60.withAlpha(44),
            border: Border.all(color: TColor.border),
            borderRadius: BorderRadius.circular(20),
          ),

          alignment: Alignment.center,

          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // SizedBox(width: 8),
              // leading
              Container(
                padding: EdgeInsets.all(4),
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: TColor.grey70.withAlpha(80),
                  borderRadius: BorderRadius.circular(14),
                ),

                alignment: Alignment.center,

                child: Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // month
                      MyText(
                        text: "Jun",
                        textColor: TColor.grey30,
                        textSize: 10,
                        textWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                      ),

                      // month
                      MyText(
                        text: "25",
                        textColor: TColor.grey30,
                        textSize: 14,
                        textWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(width: 8),

              // Title
              Expanded(
                child: MyText(
                  text: sObj["name"],
                  textColor: titleColor!,
                  textSize: titleSize,
                  textWeight: titleWeight!,
                  letterSpacing: titleSpacing,
                ),
              ),

              SizedBox(width: 8),

              // Price
              MyText(
                text: "\$${sObj["price"]}",
                textColor: priceColor!,
                textSize: priceSize,
                textWeight: priceWeight!,
                letterSpacing: priceSpacing,
              ),

              SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }

  // Status Button
  static Widget statusButton({
    required String title,
    required String value,
    required Color statusColor,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 68,
            decoration: BoxDecoration(
              color: TColor.grey70.withAlpha(100),
              border: Border.all(color: TColor.grey60.withAlpha(100)),
              borderRadius: BorderRadius.circular(14),
            ),

            alignment: Alignment.center,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                MyText(
                  text: title,
                  textColor: TColor.grey40,
                  textSize: 12,
                  textWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                ),

                SizedBox(height: 4),

                // Vlaue
                MyText(
                  text: value,
                  textColor: TColor.primaryText,
                  textSize: 16,
                  textWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ],
            ),
          ),

          Container(width: 60, height: 1, color: statusColor),
        ],
      ),
    );
  }
}

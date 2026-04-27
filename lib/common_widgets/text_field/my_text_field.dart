import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/text/my_text.dart';

class MyTextField extends StatelessWidget {

  final String title;
  final bool obscureText;
  final TextEditingController textController;
  final TextInputType? keyBoardType;

  const MyTextField({
    super.key,
    required this.title,
    required this.obscureText,
    required this.textController,
    this.keyBoardType
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Row(
            children: [
              MyText(
                text: title,
                textColor: TColor.secondaryText,
                textSize: 14,
                textWeight: FontWeight.w500,
              ),
            ],
          ),
        ),

        SizedBox(height: 6),

        // Text Field
        Container(
          width: double.maxFinite,
          height: 48,
          margin: EdgeInsets.symmetric(horizontal: 22),
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: TColor.grey60.withAlpha(20),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: TColor.grey70),
          ),

          // Text Field
          child: TextField(
            keyboardType: keyBoardType,
            controller: textController,
            obscureText: obscureText,
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.0,
            ),
            cursorColor: TColor.primaryText,
            cursorHeight: 20,
            cursorWidth: 1,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
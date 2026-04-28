import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';

class MyCenterButton extends StatelessWidget {
  final VoidCallback onTap;
  const MyCenterButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: TColor.secondary.withAlpha(80),
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),

        child: Image.asset(
          "assets/images/center_btn.png",
          width: 52,
          height: 52,
        ),
      ),
    );
  }
}

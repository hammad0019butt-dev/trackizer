import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final String iconPathName;
  final VoidCallback onTap;
  final Color? iconColor;
  const MyIconButton({super.key, required this.iconPathName, this.iconColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Image.asset("assets/images/$iconPathName", width: 20, height: 20, color: iconColor,),
    );
  }
}

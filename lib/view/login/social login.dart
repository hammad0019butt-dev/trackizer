// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';

class Socialogin extends StatefulWidget {
  const Socialogin({super.key});

  @override
  State<Socialogin> createState() => _SocialoginState();
}

class _SocialoginState extends State<Socialogin> {
  @override
  Widget build(BuildContext context) {
    // Responsiveness
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      // Body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 34.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 14),
              // App Logo
              SizedBox(
                width: 250,
                height: 40,
                child: Image.asset(
                  "assets/images/app_logo.png",
                  width: media.width,
                  height: media.height,
                  // fit: BoxFit.contain,
                ),
              ),

              Spacer(),

              // Apple Login
              MyButton.socialButton(
                title: 'Sign up with Apple',
                onPressed: () {},
                imgPath: 'apple_btn.png',
                isElevation: true,
                shadowColor: Colors.black.withAlpha(80),
                iconPath: 'apple.png',
              ),

              SizedBox(height: 24),

              // Google Login
              MyButton.socialButton(
                title: 'Sign up with Google',
                onPressed: () {},
                imgPath: 'google_btn.png',
                isElevation: true,
                shadowColor: Colors.white.withAlpha(80),
                iconPath: 'google.png',
                iconColor: TColor.grey,
                titleColor: TColor.grey,
              ),

              SizedBox(height: 24),

              // Facebook Login
              MyButton.socialButton(
                title: 'Sign up with Facebook',
                onPressed: () {},
                imgPath: 'fb_btn.png',
                isElevation: true,
                shadowColor: Colors.blue.withAlpha(80),
                iconPath: 'fb.png',
              ),

              SizedBox(height: 34),

              // OR Text
              Text(
                'OR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.grey10,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 34),

              // Secondary Button (Sign up using E-mail)
              MyButton.primaryButton(
                title: "Sign up using E-mail",
                onPressed: () {},
                imgPath: "secodry_btn.png",
                isElevation: false,
              ),

              SizedBox(height: 24),

              // Message Text
              Text(
                'By registering, you agree to our Terms of use, learn\nhow we collect, use and share your data.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.grey20,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

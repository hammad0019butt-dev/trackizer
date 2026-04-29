import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';
import 'package:trackizer/view/login/sign_in_view.dart';
import 'package:trackizer/view/login/social%20login.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => WelcomeViewState();
}

class WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    // Responsiveness
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      // Body
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Background Image
          Image.asset(
            "assets/images/welcome_screen.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.fill,
          ),

          // Widgets
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 24.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // App Logo
                  Image.asset(
                    "assets/images/welcome_screen.png",
                    width: media.width * 0.5,
                    fit: BoxFit.fill,
                  ),

                  Spacer(),

                  // Message Text
                  Text(
                    'By registering, you agree to our Terms of use, learn\nhow we collect, use and share your data.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.grey10,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 24),

                  // Primary button
                  MyButton.primaryButton(
                    title: "Get started",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Socialogin()),
                      );
                    },
                    imgPath: "primary_btn.png",
                    isElevation: true,
                  ),

                  SizedBox(height: 24),

                  // Secondary Button
                  MyButton.primaryButton(
                    title: "I have an account",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInView()),
                      );
                    },
                    imgPath: "secodry_btn.png",
                    isElevation: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

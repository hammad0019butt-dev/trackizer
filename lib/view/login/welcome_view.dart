import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    // Responsiveness
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      // Body
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Bg Image
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
                  // Logo
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

                  // Message Text
                  Text(
                    'Congue malesuada in ac justo, a tristique\nleo massa. Arcue leo leo urna risus.',
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
                    onPressed: () {},
                    imgPath: "primary_btn.png",
                    isElevation: true,
                  ),

                  SizedBox(height: 24),

                  // Secondary Button
                  MyButton.primaryButton(
                    title: "I have an account",
                    onPressed: () {},
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

// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';
import 'package:trackizer/common_widgets/meter/meter.dart';
import 'package:trackizer/common_widgets/text/my_text.dart';
import 'package:trackizer/common_widgets/text_field/my_text_field.dart';
import 'package:trackizer/view/login/sign_in_view.dart';
import 'package:trackizer/view/login/social%20login.dart';
import 'package:trackizer/view/main_tabview/main_tab_view.dart';
import 'package:trackizer/view/splash%20screen/splash_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController setPasswordController = TextEditingController();
  final TextEditingController conformPasswordController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    setPasswordController.dispose();
    conformPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 14),

              // AppLogo
              Image.asset(
                "assets/images/app_logo.png",
                width: media.width * 0.5,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              // E-main Adress
              MyTextField(
                title: 'E-mail address',
                obscureText: false,
                textController: emailController,
              ),

              const SizedBox(height: 14),

              // Set Password
              MyTextField(
                title: 'Set Password',
                obscureText: true,
                textController: setPasswordController,
              ),

              const SizedBox(height: 14),

              // Conform Password
              MyTextField(
                title: 'Confirm Password',
                obscureText: true,
                textController: conformPasswordController,
              ),

              const SizedBox(height: 24),

              // Password Meter
              Meter(),

              const SizedBox(height: 16),

              // Password Message
              MyText(
                text:
                    'Use 8 or more characters with a mix of letters,\nnumbers and symbols.',
                textColor: TColor.secondaryText,
                textSize: 14,
                textWeight: FontWeight.w500,
              ),

              const SizedBox(height: 24),

              // Sign up Button
              MyButton.primaryButton(
                imgPath: 'primary_btn.png',
                isElevation: true,
                onPressed: () async {
                  var prefs = await SharedPreferences.getInstance();

                  prefs.setBool(SplashViewState.LOGIN_KEY, true);

                  if (!context.mounted) {
                    return;
                  }

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainTabView()),
                  );

                  emailController.clear();
                  setPasswordController.clear();
                  conformPasswordController.clear();
                },
                title: 'Sign Up',
              ),

              SizedBox(height: 24),

              // Sign Up using social account
              MyButton.primaryButton(
                title: "Sign Up with social accounts",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Socialogin()),
                  );
                },
                imgPath: "secodry_btn.png",
                isElevation: false,
              ),

              SizedBox(height: 60),

              // Text
              MyText(
                text: 'Do you already have an account?',
                textColor: TColor.grey20,
                textSize: 14,
                textWeight: FontWeight.w500,
              ),

              const SizedBox(height: 24),

              // Sign In Button
              MyButton.primaryButton(
                title: "Sign In",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignInView()),
                  );
                },
                imgPath: "secodry_btn.png",
                isElevation: false,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

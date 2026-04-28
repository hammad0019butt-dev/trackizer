import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';
import 'package:trackizer/common_widgets/meter/meter.dart';
import 'package:trackizer/common_widgets/text/my_text.dart';
import 'package:trackizer/common_widgets/text_field/my_text_field.dart';
import 'package:trackizer/view/login/sign_in_view.dart';

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
              SizedBox(
                width: 200,
                height: 40,
                child: Image.asset(
                  "assets/images/app_logo.png",
                  height: media.height,
                  width: media.width,
                  fit: BoxFit.contain,
                ),
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
                onPressed: () {
                  emailController.clear();
                  setPasswordController.clear();
                  conformPasswordController.clear();
                },
                title: 'Get started, it\'s free',
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
                  Navigator.push(
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

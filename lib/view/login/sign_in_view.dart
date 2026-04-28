import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';
import 'package:trackizer/common_widgets/text/my_text.dart';
import 'package:trackizer/common_widgets/text_field/my_text_field.dart';
import 'package:trackizer/view/login/sign_up_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      // Body
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
                textController: passwordController,
              ),

              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Check Box (Remember Me)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Check Box
                        InkWell(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },

                          child: AnimatedContainer(
                            height: 24,
                            width: 24,
                            padding: EdgeInsets.all(2),
                            duration: Duration(microseconds: 500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isChecked == true
                                    ? TColor.primary
                                    : TColor.secondaryText,
                                width: 1.2,
                              ),
                              borderRadius: BorderRadius.circular(6),
                              color: isChecked == true
                                  ? TColor.primary
                                  : Colors.transparent,
                            ),
                            child: isChecked == true
                                ? Center(child: Icon(Icons.check, size: 16))
                                : null,
                          ),
                        ),

                        SizedBox(width: 10),

                        // Remmber ME
                        MyText(
                          text: "Remember me",
                          textColor: isChecked == true
                              ? TColor.primary
                              : TColor.secondaryText,
                          textSize: 16,
                          textWeight: isChecked == true
                              ? FontWeight.w700
                              : FontWeight.w600,
                        ),
                      ],
                    ),

                    // Forgot Pasword
                    InkWell(
                      onTap: () {},
                      child: MyText(
                        text: "Forgot Pasword?",
                        textColor: TColor.secondaryText,
                        textSize: 16,
                        textWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Sign up Button
              MyButton.primaryButton(
                imgPath: 'primary_btn.png',
                isElevation: true,
                onPressed: () {
                  emailController.clear();
                  passwordController.clear();
                },
                title: 'Sign In',
              ),

              SizedBox(height: 60),

              // Text
              MyText(
                text: 'If you don\'t have an account yet?',
                textColor: TColor.grey20,
                textSize: 14,
                textWeight: FontWeight.w500,
              ),

              const SizedBox(height: 24),

              // Sign In Button
              MyButton.primaryButton(
                title: "Sign Up",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpView()),
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

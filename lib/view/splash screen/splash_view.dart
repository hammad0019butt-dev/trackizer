import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trackizer/view/login/welcome_view.dart';
import 'package:trackizer/view/main_tabview/main_tab_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeView()),
      );
    });

    whereToGo();
  }

  // ignore: constant_identifier_names
  static const String LOGIN_KEY = 'login';

  void whereToGo() async {
    var prefs = await SharedPreferences.getInstance();

    var isLoggedIn = prefs.getBool(LOGIN_KEY);

    // Timer for delay the screen
    Timer(Duration(seconds: 5), () {
      // Conditon ->  If Logged in or not
      if (isLoggedIn != null) {
        // If Logged in
        if (isLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MainTabView()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => WelcomeView()),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WelcomeView()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      // Body
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(54.0),
          child: Image.asset(
            "assets/images/app_logo.png",
            height: media.height,
            width: media.width,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

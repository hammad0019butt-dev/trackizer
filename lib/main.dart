import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/view/splash%20screen/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App Title
      title: "Trackizer",

      // Debug Banner hide
      debugShowCheckedModeBanner: false,

      // Theme of the app
      theme: ThemeData(
        // Scaffold Background Color
        scaffoldBackgroundColor: TColor.grey80,

        // Font Family
        fontFamily: 'Manrope',

        // Text Theme
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            // Text Color
            color: TColor.primaryText,

            // Text Font amily
            fontFamily: 'Manrope',

            // Text Weight
            fontWeight: FontWeight.w600,

            // Text Size
            fontSize: 16,

            // Spacing between letters
            letterSpacing: 1.2,
          ),
        ),

        // Color Scheme
        colorScheme: ColorScheme.fromSeed(
          // Seed Color
          seedColor: TColor.primary,

          // Brightness
          brightness: Brightness.dark,

          // Primary Color
          primary: TColor.primary,

          // Container COlor
          primaryContainer: TColor.grey60,

          // Secondary Color
          secondary: TColor.secondary,
        ),

        // Material 13 (false)
        useMaterial3: false,
      ),

      // Starting Point
      home: SplashView(),
    );
  }
}

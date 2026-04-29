// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscribed = true;
  List yourSubscriptionList = [
    {"name": "Spotify", "icons": "", "price": "5.99"},
    {"name": "YouTube Premium", "icons": "", "price": "18.99"},
    {"name": "Microsoft OneDrive", "icons": "", "price": "29.99"},
    {"name": "Netflix", "icons": "", "price": "15.00"},
    
  ];
  List upcomingBillsList = [];

  @override
  Widget build(BuildContext context) {
    // Media Query
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      // Background color for home view
      backgroundColor: TColor.grey,
      // body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container
            Container(
              height: media.width * 1.1,
              decoration: BoxDecoration(
                color: TColor.grey80,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),

            // Container
            Container(
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: TColor.black,
                borderRadius: BorderRadius.circular(20),
              ),

              // Child
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Subscribe
                  Expanded(
                    child: MyButton.mySegmentButton(
                      title: "Your Subscriptions",
                      titleSize: isSubscribed == true ? 14 : 12,
                      onPressed: () {
                        setState(() {
                          isSubscribed = !isSubscribed;
                        });
                      },
                      isActive: isSubscribed,
                    ),
                  ),

                  // Upcoming Bills
                  Expanded(
                    child: MyButton.mySegmentButton(
                      title: "Upcoming Bills",
                      titleSize: isSubscribed == true ? 14 : 12,
                      onPressed: () {
                        setState(() {
                          isSubscribed = !isSubscribed;
                        });
                      },
                      isActive: !isSubscribed,
                    ),
                  ),

                  //
                ],
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}

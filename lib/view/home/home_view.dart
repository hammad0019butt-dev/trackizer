// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/button/my_button.dart';
import 'package:trackizer/common_widgets/custom_arc_painter.dart';
import 'package:trackizer/common_widgets/status_box_button.dart';
import 'package:trackizer/common_widgets/text/my_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSubscribed = true;

  // Subribtion brands list
  List yourSubscriptionList = [
    // Spotify
    {
      "name": "Spotify",
      "icon": "assets/images/spotify_logo.png",
      "price": "5.99",
    },

    // YouTube
    {
      "name": "YouTube Premium",
      "icon": "assets/images/youtube_logo.png",
      "price": "18.99",
    },

    // Microsoft
    {
      "name": "Microsoft OneDrive",
      "icon": "assets/images/onedrive_logo.png",
      "price": "29.99",
    },

    // Netflix
    {
      "name": "Netflix",
      "icon": "assets/images/netflix_logo.png",
      "price": "15.00",
    },
  ];

  // Upcoming Bills List
  List upcomingBillsList = [
    // Spotify
    {"name": "Spotify", "date": DateTime(2026, 05, 14), "price": "5.99"},

    // YouTube
    {
      "name": "YouTube Premium",
      "date": DateTime(2026, 05, 14),
      "price": "18.99",
    },

    // Microsoft
    {
      "name": "Microsoft OneDrive",
      "date": DateTime(2026, 05, 18),
      "price": "29.99",
    },

    // Netflix
    {"name": "Netflix", "date": DateTime(2026, 06, 21), "price": "15.00"},
  ];

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
            // Arc Painter Bar and boxes
            Container(
              height: media.width * 1.1,
              // padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: TColor.grey70.withAlpha(170),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),

              // Child
              child: Stack(
                // Aligment of contents
                alignment: Alignment.center,

                // Contents
                children: [
                  // Image
                  Image.asset(
                    "assets/images/home_bg.png",
                    height: double.infinity,
                  ),

                  // Arc Painter
                  Container(
                    width: media.width * 0.72,
                    height: media.width * 0.72,
                    padding: EdgeInsets.only(bottom: media.width * 0.1),
                    child: CustomPaint(painter: CustomArcPainter()),
                  ),

                  // Sttings Icon
                  Positioned(
                    right: 20,
                    top: 40,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/settings.png",
                        width: 26,
                        height: 26,
                        color: TColor.grey30,
                      ),
                    ),
                  ),

                  // Balance
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // App Logo
                      Image.asset(
                        "assets/images/app_logo.png",
                        width: media.width * 0.25,
                        fit: BoxFit.fill,
                      ),

                      SizedBox(height: 10),

                      // Bill
                      MyText(
                        text: "\$1,235",
                        textColor: TColor.primaryText,
                        textSize: 44,
                        textWeight: FontWeight.w700,
                      ),

                      SizedBox(height: 6),

                      // Text Message
                      MyText(
                        text: "This month bills.",
                        textColor: TColor.grey40,
                        textSize: 14,
                        textWeight: FontWeight.w500,
                      ),

                      SizedBox(height: 34),

                      // Button ( See Your Budgets )
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 18,
                          ),
                          decoration: BoxDecoration(
                            color: TColor.grey60.withAlpha(50),
                            border: Border.all(
                              color: TColor.grey60.withAlpha(100),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: MyText(
                            text: "See your budgets",
                            textColor: TColor.primaryText,
                            textSize: 12,
                            textWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Arc Painter

                  //
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Spacer(),

                        // Status Bo Buttons (3x)
                        StatusBoxButtons(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Custom Segment Tab bar
            Container(
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: TColor.black,
                borderRadius: BorderRadius.circular(20),
              ),

              // Child
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Subscribtion Tap
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
                      letterSpacing: 1.2,
                    ),
                  ),

                  // Upcoming Bills Tap
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
                      letterSpacing: 1.5,
                    ),
                  ),

                  //
                ],
              ),
            ),

            // List (Subscriptions / Bills)
            isSubscribed
                // Subscriptions List
                ? ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    itemCount: yourSubscriptionList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var sObj = yourSubscriptionList[index] as Map? ?? {};
                      return MyButton.subscriptionButton(
                        sObj: sObj,
                        onPressed: () {},
                        titleSize: 14,
                        priceSize: 14,
                        titleWeight: FontWeight.w600,
                        priceWeight: FontWeight.w600,
                        titleColor: TColor.grey10,
                        priceColor: TColor.grey10,
                        titleSpacing: 0.4,
                        priceSpacing: 0.4,
                      );
                    },
                  )
                // Bills List
                : ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    itemCount: yourSubscriptionList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var sObj = upcomingBillsList[index] as Map? ?? {};
                      return MyButton.billsButton(
                        sObj: sObj,
                        onPressed: () {},
                        titleSize: 14,
                        priceSize: 14,
                        titleWeight: FontWeight.w600,
                        priceWeight: FontWeight.w600,
                        titleColor: TColor.grey10,
                        priceColor: TColor.grey10,
                        titleSpacing: 0.4,
                        priceSpacing: 0.4,
                      );
                    },
                  ),

            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

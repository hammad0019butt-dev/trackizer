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
                      letterSpacing: 1.2,
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
                      letterSpacing: 1.5,
                    ),
                  ),

                  //
                ],
              ),
            ),

            // List
            isSubscribed
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

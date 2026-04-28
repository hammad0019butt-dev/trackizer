import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extention.dart';
import 'package:trackizer/common_widgets/center_btn/my_center_button.dart';
import 'package:trackizer/common_widgets/icon_button/my_icon_button.dart';
import 'package:trackizer/view/home/budget_view.dart';
import 'package:trackizer/view/home/calender_view.dart';
import 'package:trackizer/view/home/credit_cards_view.dart';
import 'package:trackizer/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  // Selected index
  int selectedTab = 0;

  // Page Control Bucket
  PageStorageBucket pageStorageBucket = PageStorageBucket();

  // Currunt View
  Widget curruntTabView = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body
      body: Stack(
        children: [
          // Pages
          PageStorage(bucket: pageStorageBucket, child: curruntTabView),

          SafeArea(
            child: Column(
              children: [
                Spacer(),

                Padding(
                  padding: EdgeInsets.all(18),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset("assets/images/bottom_bar_bg.png"),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Home
                              MyIconButton(
                                iconPathName: "home.png",
                                iconColor: selectedTab == 0
                                    ? TColor.primaryText
                                    : TColor.grey40,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 0;
                                    curruntTabView = HomeView();
                                  });
                                },
                              ),

                              // Budgets
                              MyIconButton(
                                iconPathName: "budgets.png",
                                iconColor: selectedTab == 1
                                    ? TColor.primaryText
                                    : TColor.grey40,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 1;
                                    curruntTabView = BudgetView();
                                  });
                                },
                              ),

                              SizedBox(width: 50, height: 50),

                              // Calender
                              MyIconButton(
                                iconPathName: "calendar.png",
                                iconColor: selectedTab == 2
                                    ? TColor.primaryText
                                    : TColor.grey40,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 2;
                                    curruntTabView = CalenderView();
                                  });
                                },
                              ),

                              // Credit Card
                              MyIconButton(
                                iconPathName: "creditcards.png",
                                iconColor: selectedTab == 3
                                    ? TColor.primaryText
                                    : TColor.grey40,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 3;
                                    curruntTabView = CreditCardsView();
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),

                      MyCenterButton(onTap: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

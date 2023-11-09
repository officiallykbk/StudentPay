// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Microjobs_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Points_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/challenges_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/referral_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscribe_options.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({
    super.key,
  });

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  // ignore: unused_field
  int _selectedOptionIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  void updateSelectedIndex(int index) {
    setState(() {
      _selectedOptionIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  final List<Widget> _optionPages = [
    SubscribeOptionPage(),
    ReferralOptionPage(),
    PointsOptionPage(),
    MicrojobsOptions(),
    ChallengeOptions(),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screensize.height,
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  scrollBehavior: ScrollBehavior(),
                  children: _optionPages,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

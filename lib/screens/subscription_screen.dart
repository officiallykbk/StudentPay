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

class _SubscriptionScreenState extends State<SubscriptionScreen> {
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
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Earn",
      //     style: GoogleFonts.inter(
      //       textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      //     ),
      //   ),
      //   actions: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         const SizedBox(
      //           height: 40,
      //           width: 23,
      //           child: Image(
      //             image: AssetImage("assets/images/star1.png"),
      //           ),
      //         ),
      //         Text(
      //           "17,537",
      //           style: GoogleFonts.inter(
      //             textStyle: TextStyle(
      //               fontWeight: FontWeight.w600,
      //               fontSize: 17,
      //             ),
      //           ),
      //         ),
      //         SizedBox(
      //           width: 1,
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: const Icon(Icons.notifications),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      body: ListView(
        children: [
          Container(
            height: 800,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: _optionPages,
            ),
          ),
          // Savings(
          //   title: 'Your Savings Balance',
          //   savingsAmount: '\$15,903.',
          // ),
          // SizedBox(height: 15),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 16),
          //         child: OptionsField(
          //           currentUser: 0,
          //           updateSelectedIndex: updateSelectedIndex,
          //           index: 0,
          //           options: 'Subscribe',
          //         ),
          //       ),
          //       SizedBox(
          //         width: 7,
          //       ),
          //       OptionsField(
          //         currentUser: 0,
          //         updateSelectedIndex: updateSelectedIndex,
          //         index: 1,
          //         options: 'Referral',
          //       ),
          //       SizedBox(
          //         width: 7,
          //       ),
          //       OptionsField(
          //         currentUser: 0,
          //         updateSelectedIndex: updateSelectedIndex,
          //         index: 2,
          //         options: 'Points',
          //       ),
          //       SizedBox(
          //         width: 7,
          //       ),
          //       OptionsField(
          //         currentUser: 0,
          //         updateSelectedIndex: updateSelectedIndex,
          //         index: 3,
          //         options: 'Microjobs',
          //       ),
          //       SizedBox(
          //         width: 7,
          //       ),
          //       OptionsField(
          //         currentUser: 0,
          //         updateSelectedIndex: updateSelectedIndex,
          //         index: 4,
          //         options: 'Challenge',
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: 400,
          //   child: PageView(
          //     controller: _pageController,
          //     scrollDirection: Axis.horizontal,
          //     children: _optionPages,
          //   ),
          // ),
        ],
      ),
    );
  }
}

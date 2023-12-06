import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Microjobs_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/challenges_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/points_option/Points_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/referral_option/referral_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscribe_options.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  static const List<Tab> tabs = [
    Tab(text: 'Subscribe'),
    Tab(text: 'Referral'),
    Tab(text: 'Points'),
    Tab(text: 'Microjobs'),
    Tab(text: 'Challenge'),
  ];

  static const List<Widget> tabViews = [
    SubscribeOptionPage(),
    ReferralOptionPage(),
    PointsOptionPage(),
    MicrojobsOptions(),
    ChallengeOptions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Earn",
          style: GoogleFonts.inter(
            textStyle:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 40,
                width: 23,
                child: Image(
                  image: AssetImage("assets/images/star1.png"),
                ),
              ),
              Text(
                "17,537",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(width: 1),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: DefaultTabController(
          length: tabs.length,
          child: Column(
            children: [
              TabBar(
                tabs: tabs,
                labelStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                labelColor: Colors.white,
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(18),
                ),
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                indicatorPadding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
              ),
              const Expanded(
                child: TabBarView(
                  children: tabViews,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/components/Savings_field.dart';
import 'package:students_pay/Earn_Screen_Folder/components/offers.dart';
import 'package:students_pay/Earn_Screen_Folder/components/options.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Earn",
          style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
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
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                width: 1,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Savings(),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: OptionsField(
                    options: 'Subscribe',
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  options: 'Referral',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  options: 'Points',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  options: 'Microjobs',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  options: 'Challenge',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 25),
            child: Text(
              'Student Monthly Subscription',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SubscriptionInfo(
              info:
                  'Start earning up to 1000 a month including no transaction fees',
              icon: Icon(Icons.telegram),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SubscriptionInfo(
              info: 'Subscribe to get more points',
              icon: Icon(Icons.wallet_rounded),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              SubscriptionOffers(
                color: Color(0x73C6D7F1),
                text: 'GHC 50 Offer',
                textTwo:
                    'Start earning up to 1000 a month including no transaction fees, except withdrawing from the platform to another platform',
              ),
              SubscriptionOffers(
                color: Color(0xFFC5F3D6),
                text: 'GHC 150 Offer',
                textTwo:
                    'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
              ),
              SubscriptionOffers(
                color: Color(0xFFFAF6D3),
                text: 'GHC 300 Offer',
                textTwo:
                    'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscription_widget/subscription_custom_container.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';

import '../../../models/subscription_model.dart';

class SilverOffer extends StatelessWidget {
  const SilverOffer({super.key, required this.offer});
  final int offer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
                    Text(
                      'Subscriptions',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SubscriptionContainer(
                  title: 'Silver Offer',
                  subscriptionModel: SubscriptionModel(
                    color: Color(0xFFCEC2C2),
                    text: 'text',
                    offer: offer,
                    textTwo: '',
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 15),
                child: Text(
                  'Benefits',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 2000 a month including no transaction fees',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: SubscriptionInfo(
                  icon: Image.asset(
                    'assets/images/offer.png',
                    width: 24,
                    height: 24,
                  ),
                  info:
                      'Start earning up to 1000 a month including no transaction fees',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

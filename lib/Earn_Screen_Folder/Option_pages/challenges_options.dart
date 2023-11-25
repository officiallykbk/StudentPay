import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';

class ChallengeOptions extends StatefulWidget {
  const ChallengeOptions({super.key});

  @override
  State<ChallengeOptions> createState() => _ChallengeOptionsState();
}

class _ChallengeOptionsState extends State<ChallengeOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17, top: 25),
          child: Text(
            'Student Monthly Subscription',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
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
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SubscriptionInfo(
            info: 'Subscribe to get more points',
            icon: Image.asset(
              'assets/images/cash.png',
              width: 24,
              height: 24,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

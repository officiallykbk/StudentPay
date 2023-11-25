import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscription_widget/first_container.dart';
import 'package:students_pay/Earn_Screen_Folder/components/offers.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';
import 'package:students_pay/Earn_Screen_Folder/models/subscription_model.dart';

class SubscribeOptionPage extends StatefulWidget {
  const SubscribeOptionPage({super.key});

  @override
  State<SubscribeOptionPage> createState() => _SubscribeOptionState();
}

class _SubscribeOptionState extends State<SubscribeOptionPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15, top: 25),
          child: Text('Current Offers',
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w900))),
        ),
        const CustomContainer(),
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
        const SizedBox(height: 20),
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
        SubscriptionOffers(
          index: 0,
          subscriptionModel: SubscriptionModel(
            color: const Color(0xFFE5F0FF),
            text: 'GHC ',
            offer: 100,
            textTwo:
                'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
          ),
        ),
        SubscriptionOffers(
          index: 1,
          subscriptionModel: SubscriptionModel(
            color: Color.fromARGB(255, 246, 248, 112),
            text: 'GHC ',
            offer: 150,
            textTwo:
                'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
          ),
        ),
        SubscriptionOffers(
          index: 2,
          subscriptionModel: SubscriptionModel(
            color: Color(0xFFFAF6D3),
            text: 'GHC ',
            offer: 200,
            textTwo:
                'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
          ),
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}

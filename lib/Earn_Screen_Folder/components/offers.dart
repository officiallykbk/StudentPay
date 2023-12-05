// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscription_screens/diamond_offer.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscription_screens/gold_offer.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscription_screens/silver_offer.dart';
import 'package:students_pay/Earn_Screen_Folder/models/subscription_model.dart';

class SubscriptionOffers extends StatelessWidget {
  const SubscriptionOffers(
      {super.key, required this.index, required this.subscriptionModel});

  final int index;
  final SubscriptionModel subscriptionModel;

  @override
  Widget build(BuildContext context) {
    final mystyle = GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Color(0xFF070101),
            fontSize: 22,
            fontWeight: FontWeight.w900));
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
      child: Container(
        width: width,
        height: height * 0.32,
        decoration: BoxDecoration(
            color: subscriptionModel.color,
            border: const Border.fromBorderSide(
                BorderSide(style: BorderStyle.solid)),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    subscriptionModel.text,
                    style: mystyle,
                  ),
                  Text(
                    subscriptionModel.offer.toString(),
                    style: mystyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    subscriptionModel.textThree,
                    style: mystyle,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(subscriptionModel.textTwo,
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          letterSpacing: 0.3,
                          color: Color(0xFF070101),
                          fontSize: 15,
                          fontWeight: FontWeight.w600))),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SilverOffer(
                                  offer: subscriptionModel.offer,
                                )));
                  } else if (index == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DiamondOffer(offer: subscriptionModel.offer)));
                  } else if (index == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GoldOffer(offer: subscriptionModel.offer)));
                  }
                },
                child: Container(
                  width: width * 0.8,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: const Border.fromBorderSide(
                          BorderSide(style: BorderStyle.solid)),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Subscribe",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

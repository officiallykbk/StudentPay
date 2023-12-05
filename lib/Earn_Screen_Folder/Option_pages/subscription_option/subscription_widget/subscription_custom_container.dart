// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/models/subscription_model.dart';

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({
    Key? key,
    required this.title,
    required this.subscriptionModel,
  }) : super(key: key);
  final String title;

  final SubscriptionModel subscriptionModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      child: SizedBox(
        height: 140,
        child: Container(
          padding: EdgeInsets.only(left: 1, top: 10, bottom: 10),
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: subscriptionModel.color,
              borderRadius: BorderRadius.circular(27),
              border:
                  Border.all(width: 1, color: Colors.black.withOpacity(0.20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      title,
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_remove_outlined),
                      iconSize: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      subscriptionModel.offer.toStringAsFixed(2),
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

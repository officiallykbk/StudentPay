// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionOffers extends StatelessWidget {
  const SubscriptionOffers(
      {super.key,
      required this.text,
      required this.textTwo,
      required this.color});
  final String text;
  final String textTwo;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
      child: Container(
        width: width,
        height: height * 0.32,
        decoration: BoxDecoration(
            color: color,
            border: const Border.fromBorderSide(
                BorderSide(style: BorderStyle.solid)),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        color: Color(0xFF070101),
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(textTwo,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          letterSpacing: 0.3,
                          color: Color(0xFF070101),
                          fontSize: 15,
                          fontWeight: FontWeight.w700))),
              SizedBox(
                height: 40,
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}

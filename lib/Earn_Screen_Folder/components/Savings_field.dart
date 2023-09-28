// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Savings extends StatefulWidget {
  const Savings({super.key});

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15), // Adjust the top padding value as needed
      child: SizedBox(
        height: 150,
        child: Container(
          padding: EdgeInsets.only(left: 1, top: 10, bottom: 10),
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              border:
                  Border.all(width: 1, color: Colors.black.withOpacity(0.20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 10),
                child: Text(
                  'Your Savings Balance',
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      '\$15,903.',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      '00',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0xFF7C7373),
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

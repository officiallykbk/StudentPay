// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Microjobs_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Points_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/challenges_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/referral_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscribe_options.dart';

class OptionsField extends StatelessWidget {
  final void Function(int) updateSelectedIndex; // Callback function
  final int index; // Index for this OptionsField
  final String options;

  OptionsField({
    Key? key,
    required this.updateSelectedIndex,
    required this.index,
    required this.options,
  });
  final List<Widget> _optionPages = [
    SubscribeOptionPage(),
    ReferralOptionPage(),
    PointsOptionPage(),
    MicrojobsOptions(),
    ChallengeOptions(),
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Row(
          children: [
            InkWell(
              customBorder: StadiumBorder(),
              splashColor: Colors.black,
              onTap: () {
                // Call the callback function with the index when tapped
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => _optionPages[(index)]));
              },
              child: Container(
                width: width * 0.3,
                height: 45,
                decoration: BoxDecoration(
                  border: const Border.fromBorderSide(
                    BorderSide(style: BorderStyle.solid),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    options,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

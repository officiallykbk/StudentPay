// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Microjobs_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Points_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/challenges_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/referral_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscribe_options.dart';
import 'package:students_pay/screens/studentspay_navBar.dart';

class OptionsField extends StatelessWidget {
  final void Function(int) updateSelectedIndex; // Callback function
  final int currentUser;
  final int index; // Index for this OptionsField
  final String options;

  OptionsField({
    Key? key,
    required this.updateSelectedIndex,
    required this.index,
    required this.options,
    required this.currentUser,
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => WillPopScope(
                      onWillPop: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBar(
                              currentIndex: 0,
                            ),
                          ),
                        );
                        return false;
                      },
                      child: _optionPages[index],
                    ),
                  ),
                );
              },
              child: Container(
                width: width * 0.3,
                height: 45,
                decoration: BoxDecoration(
                  color:
                      currentUser == index ? Colors.black : Colors.transparent,
                  border: const Border.fromBorderSide(
                    BorderSide(style: BorderStyle.solid),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    options,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color:
                            currentUser == index ? Colors.white : Colors.black,
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

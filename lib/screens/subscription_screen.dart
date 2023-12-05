import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/Microjobs_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/challenges_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/points_option/Points_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/referral_option/referral_options.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/subscription_option/subscribe_options.dart';

var _selectedIndex = 0;
String selected = "Subscribe";

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({
    super.key,
  });

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Earn",
            style: GoogleFonts.inter(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
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
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(
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
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: optionsField(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                            selected = "Subscribe";
                          });
                        },
                        options: 'Subscribe',
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    optionsField(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                          selected = "Referral";
                        });
                      },
                      options: 'Referral',
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    optionsField(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 2;
                          selected = "Points";
                        });
                      },
                      options: 'Points',
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    optionsField(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 3;
                          selected = "Microjobs";
                        });
                      },
                      options: 'Microjobs',
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    optionsField(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 4;
                          selected = "Challenge";
                        });
                      },
                      options: 'Challenge',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _selectedIndex == 0
                  ? const SubscribeOptionPage()
                  : _selectedIndex == 1
                      ? const ReferralOptionPage()
                      : _selectedIndex == 2
                          ? const PointsOptionPage()
                          : _selectedIndex == 3
                              ? const MicrojobsOptions()
                              : _selectedIndex == 4
                                  ? const ChallengeOptions()
                                  : const SizedBox()
            ]))));
  }

  Widget optionsField({required String options, required Function()? onTap}) {
    var width = MediaQuery.of(context).size.width;

    return InkWell(
      customBorder: const StadiumBorder(),
      splashColor: Colors.black,
      onTap: onTap,
      child: Container(
        width: width * 0.3,
        height: 50,
        decoration: BoxDecoration(
          color: selected == options ? Colors.black : Colors.transparent,
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
                color: selected == options ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

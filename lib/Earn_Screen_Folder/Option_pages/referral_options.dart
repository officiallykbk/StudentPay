// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/components/Savings_field.dart';
import 'package:students_pay/Earn_Screen_Folder/components/options.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';

class ReferralOptionPage extends StatefulWidget {
  const ReferralOptionPage({
    super.key,
  });

  @override
  State<ReferralOptionPage> createState() => _ReferralOptionPageState();
}

class _ReferralOptionPageState extends State<ReferralOptionPage> {
  int? selectedIndex;

  void updateSelectedIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Earn",
          style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
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
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Savings(),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: OptionsField(
                      currentUser: 1,
                      // Pass the callback function to OptionsField
                      updateSelectedIndex: updateSelectedIndex,
                      index: 0,
                      options: 'Subscribe',
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  OptionsField(
                    currentUser: 1,
                    updateSelectedIndex: updateSelectedIndex,
                    index: 1,
                    options: 'Referral',
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  OptionsField(
                    currentUser: 0,
                    updateSelectedIndex: updateSelectedIndex,
                    index: 2,
                    options: 'Points',
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  OptionsField(
                    currentUser: 0,
                    updateSelectedIndex: updateSelectedIndex,
                    index: 3,
                    options: 'Microjobs',
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  OptionsField(
                    currentUser: 0,
                    updateSelectedIndex: updateSelectedIndex,
                    index: 4,
                    options: 'Challenge',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 25),
              child: Text(
                'Student Monthly Subscription',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SubscriptionInfo(
                icon: Icon(
                  Icons.telegram,
                  size: 35,
                ),
                info:
                    'Send Referrral codes to others and earn points that can be withdrawn as cash',
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SubscriptionInfo(
                info: 'Subscribe to get more points',
                icon: Image.asset(
                  'assets/images/cash.png', // Replace with your image path
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                  // Add any decoration if needed
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                ReferralVoucherField(
                  text:
                      'Share Your referral Code with your Friends on Other Socia media platforms',
                  textTwo:
                      'Earn up to 1500 coins every 5 friends you share your referral code with',
                  color: Color(0xFFC5F3D6),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReferralVoucherField extends StatelessWidget {
  const ReferralVoucherField(
      {super.key,
      required this.text,
      required this.textTwo,
      required this.color});
  final String text;
  final String textTwo;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final vouchernamecontroller = TextEditingController();

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
      child: Container(
        width: width,
        height: height * 0.28,
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
                          fontWeight: FontWeight.w500))),
              SizedBox(
                height: 15,
              ),
              VoucherField(
                hintText: 'Enter Voucher Code',
                controller: vouchernamecontroller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VoucherField extends StatelessWidget {
  const VoucherField({
    super.key,
    this.controller,
    required this.hintText,
  });
  final controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 1, right: 1),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none, // Remove the solid border
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}

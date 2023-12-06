import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/referral_option/custom_referral_container.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';

class ReferralOptionPage extends StatefulWidget {
  const ReferralOptionPage({
    super.key,
  });

  @override
  State<ReferralOptionPage> createState() => _ReferralOptionPageState();
}

class _ReferralOptionPageState extends State<ReferralOptionPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              const CustomReferralContainer(
                numberOfUsers: 45,
                points: 834,
              ),
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
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SubscriptionInfo(
                  icon: Icon(
                    Icons.telegram,
                    size: 35,
                  ),
                  info:
                      'Send Referrral codes to others and earn points that can be withdrawn as cash',
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SubscriptionInfo(
                  info: 'Subscribe to get more points',
                  icon: Image.asset('assets/images/cash.png',
                      width: 24, height: 24),
                ),
              ),
              const SizedBox(height: 20),
              const ReferralVoucherField(
                text:
                    'Share Your referral Code with your Friends on Other Socia media platforms',
                textTwo:
                    'Earn up to 1500 coins every 5 friends you share your referral code with',
                color: Color(0xFFC5F3D6),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 17,
                  top: 20,
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        customBorder: const StadiumBorder(),
                        splashColor: Colors.black,
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: const Border.fromBorderSide(
                              BorderSide(style: BorderStyle.solid),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_back_ios_new),
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text(
                                  'Subscribe',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.content_copy),
                      iconSize: 50,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        )
      ],
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
        height: height * 0.35,
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
                        fontSize: 21,
                        fontWeight: FontWeight.w900)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(textTwo,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          letterSpacing: 0.3,
                          color: Color(0xFF070101),
                          fontSize: 16.5,
                          fontWeight: FontWeight.w700))),
              const SizedBox(
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
            hintStyle: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

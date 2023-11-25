import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/mobile_money/add_mom_number_screen.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/mobile_money/momo_verification_screen.dart';

import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class MomoPasswordScreen extends StatefulWidget {
  const MomoPasswordScreen({super.key});

  @override
  State<MomoPasswordScreen> createState() => _MomoPasswordScreenState();
}

class _MomoPasswordScreenState extends State<MomoPasswordScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddMomoNumberScreen(),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.back)),
          title: Text(
            "Wallet",
            style: GoogleFonts.inter(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Progress(indicator: 0.7),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter Password",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "xxxxxxx"),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  alignment: Alignment.center,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(style: BorderStyle.solid)),
                  width: width,
                  child: Row(children: [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Glover Smith",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400)),
                        ),
                        const Text("878 784 xxx"),
                      ],
                    )
                  ]),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MomoVerificationScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Container(
                      height: 50,
                      width: width,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          borderRadius: BorderRadius.circular(24)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}

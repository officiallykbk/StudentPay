import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/bank/bank_details_screen.dart';

import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class BankPasswordScreen extends StatefulWidget {
  const BankPasswordScreen({super.key});

  @override
  State<BankPasswordScreen> createState() => _BankPasswordScreenState();
}

class _BankPasswordScreenState extends State<BankPasswordScreen> {
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
                    builder: (context) => const BankDetailsScreen(),
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
                const Spacer(),
                GestureDetector(
                  onTap: () {},
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

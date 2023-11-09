import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/alert_dialog.dart';

import 'package:students_pay/screens/pay_screens/purchase_airtime.dart';

import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class AirtimeConfirmationScreen extends StatefulWidget {
  const AirtimeConfirmationScreen({super.key});

  @override
  State<AirtimeConfirmationScreen> createState() =>
      _AirtimeConfirmationScreenState();
}

class _AirtimeConfirmationScreenState extends State<AirtimeConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PurchaseAirtimeScreen(),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.back)),
          title: Text(
            "Pay",
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
                const Progress(indicator: 0.8),
                const SizedBox(height: 15),
                Text(
                  "Confirm Transaction",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(style: BorderStyle.solid)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recipient Information",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700)),
                        ),
                        TextButton(onPressed: () {}, child: const Text("Edit"))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Glover Smith",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400)),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("054 854 4589"),
                        )
                      ],
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(style: BorderStyle.solid)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Amount",
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ),
                            TextButton(
                                onPressed: () {}, child: const Text("Edit"))
                          ],
                        ),
                        const Text("GHC 20.54"),
                      ]),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const ShowAlertDialog();
                        });
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
                          "Confirm",
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/pay/payment_types_screen.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class TapNPayScreen extends StatefulWidget {
  const TapNPayScreen({super.key});

  @override
  State<TapNPayScreen> createState() => _TapNPayScreenState();
}

class _TapNPayScreenState extends State<TapNPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PaymentTypesScreen(),
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.0),
        child: Column(
          children: [
            Progress(indicator: 0.4),
          ],
        ),
      ),
    );
  }
}

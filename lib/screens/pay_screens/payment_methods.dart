import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/scan_qr_screen.dart';
import 'package:students_pay/screens/pay_screens/short_code_screen.dart';
import 'package:students_pay/screens/pay_screens/student_name_screen.dart';
import 'package:students_pay/screens/pay_screens/tap_N_pay_screen.dart';
import 'package:students_pay/screens/pay_screens/vendor_code_screen.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

import 'package:students_pay/screens/studentspay_navBar.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String general = '';
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected5 = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NavBar(),
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
            const Progress(indicator: 0.2),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Payment Method",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () => setState(() {
                      general = '1';
                      selected1 = !selected1;
                      selected2 = false;
                      selected3 = false;
                      selected4 = false;
                      selected5 = false;
                      isVisible = true;
                      debugPrint("stos");
                    }),
                child: _paymentMethod(
                    title: "Name of Student",
                    isSelected: selected1,
                    icon: Icons.person)),
            GestureDetector(
                onTap: () => setState(() {
                      general = '2';
                      selected1 = false;
                      selected2 = true;
                      selected3 = false;
                      selected4 = false;
                      selected5 = false;
                      isVisible = true;

                      debugPrint("stos");
                    }),
                child: _paymentMethod(
                    title: "Short Code",
                    isSelected: selected2,
                    icon: Icons.payment)),
            GestureDetector(
                onTap: () => setState(() {
                      general = '3';
                      selected1 = false;
                      selected2 = false;
                      selected3 = true;
                      selected4 = false;
                      selected5 = false;
                      isVisible = true;

                      debugPrint("stos");
                    }),
                child: _paymentMethod(
                    title: "Vendor Code",
                    isSelected: selected3,
                    icon: Icons.telegram)),
            GestureDetector(
                onTap: () => setState(() {
                      general = '4';
                      selected1 = false;
                      selected2 = false;
                      selected3 = false;
                      selected4 = true;
                      selected5 = false;
                      isVisible = true;

                      debugPrint("stos");
                    }),
                child: _paymentMethod(
                    title: "Scan Qr Code",
                    isSelected: selected4,
                    icon: Icons.scanner)),
            GestureDetector(
                onTap: () => setState(() {
                      general = '5';
                      selected1 = !selected1;
                      selected1 = false;
                      selected2 = false;
                      selected3 = false;
                      selected4 = false;
                      selected5 = true;
                      isVisible = true;

                      debugPrint("stos");
                    }),
                child: _paymentMethod(
                    title: "Tap N Pay",
                    isSelected: selected5,
                    icon: Icons.tap_and_play)),
            const Spacer(),
            Container(
              width: width,
            ),
            const Spacer(),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => switchToScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 17),
                  alignment: Alignment.center,
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Text("Next"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _paymentMethod(
      {required String title,
      required bool isSelected,
      required IconData icon}) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(9),
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              style: BorderStyle.solid,
              color: isSelected ? Colors.blue : Colors.black)),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(icon),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: GoogleFonts.inter(
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
          ),
          const Spacer(),
          const Icon(Icons.arrow_outward)
        ],
      ),
    );
  }

  Widget switchToScreen() {
    if (general == "1") {
      return const StudentNameScreen();
    } else if (general == "2") {
      return const ShortCodeScreen();
    } else if (general == "3") {
      return const VendorCodeScreen();
    } else if (general == "4") {
      return const ScanQrCodeScreen();
    } else {
      return const TapNPayScreen();
    }
  }
}

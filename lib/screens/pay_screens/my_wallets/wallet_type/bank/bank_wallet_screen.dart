import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/bank/bank_details_screen.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/wallet_type_screen.dart';

import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class BankWalletScreen extends StatefulWidget {
  const BankWalletScreen({super.key});

  @override
  State<BankWalletScreen> createState() => _BankWalletScreenState();
}

class _BankWalletScreenState extends State<BankWalletScreen> {
  String general = '';
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

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
                  builder: (context) => const WalletTypeScreen(),
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
            const Progress(indicator: 0.2),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Type of Bank",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () => setState(() {
                      general = 'Republic';
                      selected1 = !selected1;
                      selected2 = false;
                      selected3 = false;

                      isVisible = true;
                    }),
                child: _paymentMethod(
                    title: "Republic",
                    isSelected: selected1,
                    imgSrc: "assets/images/mtn.png")),
            GestureDetector(
                onTap: () => setState(() {
                      general = 'GCB';
                      selected1 = false;
                      selected2 = true;
                      selected3 = false;

                      isVisible = true;
                    }),
                child: _paymentMethod(
                    title: "GCB",
                    isSelected: selected2,
                    imgSrc: "assets/images/vodafone.png")),
            GestureDetector(
                onTap: () => setState(() {
                      general = 'ABSA';
                      selected1 = false;
                      selected2 = false;
                      selected3 = true;

                      isVisible = true;
                    }),
                child: _paymentMethod(
                    title: "ABSA",
                    isSelected: selected3,
                    imgSrc: "assets/images/airtel.png")),
            const Spacer(),
            Visibility(
              visible: isVisible,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => switchToScreen()),
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
      required String imgSrc}) {
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
            child: Image.asset(
              imgSrc,
              fit: BoxFit.fill,
            ),
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
    if (general == "Rebublic") {
      return const BankDetailsScreen();
    } else if (general == "GCB") {
      return const BankDetailsScreen();
    } else {
      return const BankDetailsScreen();
    }
  }
}

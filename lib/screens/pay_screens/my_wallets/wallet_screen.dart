import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/chart/chart.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/wallet_type_screen.dart';

import 'package:students_pay/screens/studentspay_navbar.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NavBar(
                      currentIndex: 1,
                    ),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.back)),
          title: Text(
            "My Wallets",
            style: GoogleFonts.inter(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(children: [
            Expanded(
                child: ListView(
              children: const [
                Chart(),
                SizedBox(
                  height: 10,
                ),
                WalletType(
                  walletTypeText: 'StudentsPay Account',
                  containerColor: Color.fromRGBO(74, 192, 255, 1),
                  textColor: Colors.white,
                  walletBalance: "15,903.00",
                  walletDescriptionText: "Your Savings Balance",
                ),
                WalletType(
                  walletTypeText: 'Mobile Money Account',
                  containerColor: Color.fromRGBO(250, 255, 0, 1),
                  textColor: Colors.black,
                  walletBalance: "15,903.00",
                  walletDescriptionText: "MTN Mobile Money",
                ),
                WalletType(
                  walletTypeText: 'Bank Account',
                  containerColor: Color.fromRGBO(234, 67, 53, 1),
                  textColor: Colors.white,
                  walletBalance: "15,903.00",
                  walletDescriptionText: "MTN Mobile Money",
                ),
              ],
            )),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(style: BorderStyle.solid)),
                    child: const Text("Edit"),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const WalletTypeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(12),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(style: BorderStyle.solid)),
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )),
              ],
            )
          ]),
        ));
  }
}

class WalletType extends StatelessWidget {
  final String walletTypeText;
  final String walletDescriptionText;
  final String walletBalance;

  final Color textColor;
  final Color containerColor;

  const WalletType({
    super.key,
    required this.walletTypeText,
    required this.walletDescriptionText,
    required this.walletBalance,
    required this.textColor,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          walletTypeText,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          height: 119,
          width: double.infinity,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                style: BorderStyle.solid,
                color: containerColor,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                walletDescriptionText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "\$$walletBalance",
                style: TextStyle(
                  color: textColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

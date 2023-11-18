import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/airtime/airtime_amount_screen.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';
import 'package:students_pay/screens/studentspay_navbar.dart';

class PurchaseAirtimeScreen extends StatefulWidget {
  const PurchaseAirtimeScreen({super.key});

  @override
  State<PurchaseAirtimeScreen> createState() => _PurchaseAirtimeScreenState();
}

class _PurchaseAirtimeScreenState extends State<PurchaseAirtimeScreen> {
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
                  builder: (context) => const NavBar(
                    currentIndex: 1,
                  ),
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
              "Select Network",
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700)),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () => setState(() {
                      general = 'Mtn';
                      selected1 = !selected1;
                      selected2 = false;
                      selected3 = false;

                      isVisible = true;
                    }),
                child: _paymentMethod(
                    title: "MTN",
                    isSelected: selected1,
                    imgSrc: "assets/images/mtn.png")),
            GestureDetector(
                onTap: () => setState(() {
                      general = 'Vodafone';
                      selected1 = false;
                      selected2 = true;
                      selected3 = false;

                      isVisible = true;
                    }),
                child: _paymentMethod(
                    title: "Vodafone",
                    isSelected: selected2,
                    imgSrc: "assets/images/vodafone.png")),
            GestureDetector(
                onTap: () => setState(() {
                      general = 'Airtel';
                      selected1 = false;
                      selected2 = false;
                      selected3 = true;

                      isVisible = true;
                    }),
                child: _paymentMethod(
                    title: "Airtel / Tigo",
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
    if (general == "Mtn") {
      return const AmountOfAirtimeScreen(
        text: "Mtn",
        imgSrc: "assets/images/mtn.png",
      );
    } else if (general == "Vodafone") {
      return const AmountOfAirtimeScreen(
        text: "Vodafone",
        imgSrc: "assets/images/vodafone.png",
      );
    } else {
      return const AmountOfAirtimeScreen(
        text: "Airtel / Tigo",
        imgSrc: "assets/images/airtel.png",
      );
    }
  }
}

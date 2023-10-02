import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:students_pay/screens/sendScreenPages/AccNum.dart';
import 'package:students_pay/screens/sendScreenPages/MomoNum.dart';
import 'package:students_pay/screens/sendScreenPages/sTsName.dart';
import 'referencepages.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  String general = '';
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  Widget opener() {
    if (general == "sTs") {
      return const StudentName();
    } else if (general == "Momo") {
      return const MomoNum();
    } else {
      return const BankNum();
    }
  }

  switcher() {
    if (selected1 == true) {
      setState(() {
        selected2 = false;
        selected3 = false;
      });
    } else if (selected2 == true) {
      setState(() {
        selected1 = false;
        selected3 = false;
      });
    } else {
      setState(() {
        selected1 = false;
        selected2 = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppTop(),
      ),
      body: Column(
        children: [
          // Progress bar
          const Progress(indicator: 0.2),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Payment Method",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  general = 'sTs';
                  selected1 = !selected1;
                  switcher();
                  debugPrint("stos");
                }),
                child: SendMethod(
                    method: "StudentPay-to-StudentPay",
                    pngname: "studentpaymode.svg",
                    selected: selected1),
              ),
              GestureDetector(
                  onTap: () => setState(() {
                        general = 'Momo';
                        selected2 = !selected2;
                        switcher();
                        debugPrint("momo");
                      }),
                  child: SendMethod(
                      method: "Mobile Money",
                      pngname: "momo.svg",
                      selected: selected2)),
              GestureDetector(
                  onTap: () => setState(() {
                        general = 'Acc';
                        selected3 = !selected3;
                        switcher();
                        debugPrint("acc");
                      }),
                  child: SendMethod(
                      method: "Bank", pngname: "bank.svg", selected: selected3))
            ],
          )),
          // const Spacer(),
          GestureDetector(
            onTap: general == ''
                ? () {}
                : () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => opener())),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: 20),
                width: screenWidth - 50,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Center(
                  child: Text("Next",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

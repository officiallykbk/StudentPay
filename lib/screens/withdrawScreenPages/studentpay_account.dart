import 'package:flutter/material.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';
import 'package:students_pay/screens/withdrawScreenPages/amount.dart';

class studentpay_account extends StatefulWidget {
  const studentpay_account({super.key});

  @override
  State<studentpay_account> createState() => _studentpay_accountState();
}

class _studentpay_accountState extends State<studentpay_account> {
  String general = '';
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

  Widget opener() {
    return Amount(option: general);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppTop(name: "Withdraw Money"),
      ),
      body: Column(
        children: [
          // Progress bar
          const Progress(indicator: 0.4),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "StudentPay Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  general = 'Current Account';
                  selected1 = !selected1;
                  selected2 = false;
                  selected3 = false;
                }),
                child: SendMethod(
                    method: "Current Account",
                    pngname: "",
                    selected: selected1),
              ),
              GestureDetector(
                  onTap: () => setState(() {
                        general = 'Savings Account';
                        selected2 = !selected2;
                        selected1 = false;
                        selected3 = false;
                      }),
                  child: SendMethod(
                      method: "Savings", pngname: "", selected: selected2)),
              GestureDetector(
                  onTap: () => setState(() {
                        general = 'Work Account';
                        selected3 = !selected3;
                        selected1 = false;
                        selected2 = false;
                      }),
                  child: SendMethod(
                      method: "Work", pngname: "", selected: selected3))
            ],
          )),
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
                decoration: BoxDecoration(
                    color: general == ''
                        ? Colors.amber.shade100
                        : const Color(
                            0xFFE3BA14,
                          ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
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

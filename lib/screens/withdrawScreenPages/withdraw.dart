import 'package:flutter/material.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';
import 'package:students_pay/screens/withdrawScreenPages/mobile_money.dart';
import 'package:students_pay/screens/withdrawScreenPages/studentpay_account.dart';
import 'package:students_pay/screens/withdrawScreenPages/work_account.dart';

class WithdrawMoney extends StatefulWidget {
  const WithdrawMoney({super.key});

  @override
  State<WithdrawMoney> createState() => _WithdrawMoneyState();
}

class _WithdrawMoneyState extends State<WithdrawMoney> {
  String general = '';
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

  opener() {
    if (general == "sTs") {
      return const studentpay_account();
    } else if (general == "Momo") {
      return const withdraw_momo();
    } else {
      return const withdraw_work();
    }
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
          const Progress(indicator: 0.2),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Select Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  general = 'sTs';
                  selected1 = !selected1;
                  selected2 = false;
                  selected3 = false;
                }),
                child: SendMethod(
                    method: "StudentPay Account",
                    pngname: "",
                    selected: selected1),
              ),
              GestureDetector(
                  onTap: () => setState(() {
                        general = 'Momo';
                        selected2 = !selected2;
                        selected1 = false;
                        selected3 = false;
                      }),
                  child: SendMethod(
                      method: "Mobile Number",
                      pngname: "",
                      selected: selected2)),
              GestureDetector(
                  onTap: () => setState(() {
                        general = 'Acc';
                        selected3 = !selected3;
                        selected1 = false;
                        selected2 = false;
                      }),
                  child: SendMethod(
                      method: "Bank", pngname: "", selected: selected3))
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

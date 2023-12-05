import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';
import 'package:students_pay/screens/withdrawScreenPages/withdraw_summary.dart';

class Amount extends StatefulWidget {
  final String option;
  const Amount({required this.option, super.key});

  @override
  State<Amount> createState() => _AmountState();
}

class _AmountState extends State<Amount> {
  TextEditingController textarea = TextEditingController();
  @override
  void initState() {
    textarea = TextEditingController();
    textarea.text = "GH₵";
    super.initState();
  }

  @override
  void dispose() {
    textarea.dispose();
    super.dispose();
  }

  String general = '';
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  // Widget opener() {
  //   if (general == "sTs") {
  //     return const StudentName();
  //   } else if (general == "Momo") {
  //     return const MomoNum();
  //   } else {
  //     return const BankNum();
  //   }
  // }

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
          const Progress(indicator: 0.6),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter Amount",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width - 50,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 179, 177, 177),
                        // remove color after adding svg image
                        // : Colors.transparent,

                        // Add svg image here
                        child: SvgPicture.asset("assets/svgassets/"),
                      ),
                      const SizedBox(width: 5),
                      Text("StudentPay ${widget.option}",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 99, 99, 99))),
                    ],
                  )),
              Container(
                alignment: Alignment.center,
                height: 145,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: const InputDecoration(border: InputBorder.none),
                  controller: textarea,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w700),
                ),
              )
            ],
          )),
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const TransSum())),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: 20),
                width: screenWidth - 50,
                decoration: const BoxDecoration(
                    color: Color(
                      0xFFE3BA14,
                    ),
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

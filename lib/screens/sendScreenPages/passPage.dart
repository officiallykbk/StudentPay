import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:students_pay/screens/sendScreenPages/summary.dart';

import 'referencepages.dart';

class PassWord extends StatefulWidget {
  const PassWord({
    super.key,
  });

  @override
  State<PassWord> createState() => _PassWordState();
}

class _PassWordState extends State<PassWord> {
  String general = '';
  opener() {
    return const TransSum();
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
          const Progress(indicator: 0.6),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enter Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.20000000298023224),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  height: 35,
                  width: screenWidth - 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    autocorrect: false,
                    decoration: const InputDecoration(
                        hintText: "Password", border: InputBorder.none),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(height: 70),
                const Expanded(child: KeyPad())
              ],
            ),
          )),
          // const Spacer(),
          GestureDetector(
            onTap:
                //general == ''
                //     ? () {}
                //     :
                () => Navigator.of(context)
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

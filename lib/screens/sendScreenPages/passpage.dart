import 'package:flutter/material.dart';
import 'package:students_pay/screens/sendScreenPages/Summary.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class PassWord extends StatefulWidget {
  const PassWord({
    super.key,
  });

  @override
  State<PassWord> createState() => _PassWordState();
}

class _PassWordState extends State<PassWord> {
  final TextEditingController textarea = TextEditingController();
  String general = '';
  opener() {
    return const TransSum();
  }

  bool maxlengthreached = false;
  ontapped(String text) {
    if (!maxlengthreached) {
      setState(() {
        if (textarea.text.length < 10) {
          textarea.text += text;
        }
      });
    }
    if (textarea.text.length > 10) {
      maxlengthreached = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppTop(name: "Send Money"),
      ),
      body: Column(
        children: [
          // Progress bar
          const Progress(indicator: 0.6),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Enter Password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              NumTextfield(
                0,
                varController: textarea,
                purpose: "Password",
              ),
            ]),
          )),
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

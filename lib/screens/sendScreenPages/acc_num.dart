import 'package:flutter/material.dart';
import 'passpage.dart';
import 'referencepages.dart';

class BankNum extends StatefulWidget {
  const BankNum({
    super.key,
  });

  @override
  State<BankNum> createState() => _BankNumState();
}

class _BankNumState extends State<BankNum> {
  final TextEditingController textarea = TextEditingController();
  String general = '';
  opener() {
    return const PassWord();
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
          const Progress(indicator: 0.4),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Enter Account Number",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                NumTextfield(
                  0,
                  varController: textarea,
                  purpose: "Account Number",
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              width: 1,
                              color: Colors.black
                                  .withOpacity(0.20000000298023224)))),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Republic Bank',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '878 784 xxxx',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          GestureDetector(
            onTap:
                // general == ''
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

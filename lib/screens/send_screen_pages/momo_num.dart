import 'package:flutter/material.dart';

import 'passpage.dart';
import 'referencepages.dart';

class MomoNum extends StatefulWidget {
  const MomoNum({super.key});

  @override
  State<MomoNum> createState() => _MomoNumState();
}

class _MomoNumState extends State<MomoNum> {
  final TextEditingController textarea = TextEditingController();
  String general = '';
  opener() {
    return const PassWord();
  }

  ontapped(String text) {
    setState(() {
      textarea.text += text;
    });
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
                    "Enter Mobile Number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  // hello
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
                      // keyboardAppearance: ,
                      // readOnly: true,
                      controller: textarea,
                      textAlign: TextAlign.center,
                      autocorrect: false,
                      decoration: const InputDecoration(
                          hintText: "Mobile number", border: InputBorder.none),
                      keyboardType: TextInputType.number,
                    ),
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
                                'Glover Smith',
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
                  Expanded(child: KeyPad(ontapped: ontapped))
                ],
              ),
            ),
          ),
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

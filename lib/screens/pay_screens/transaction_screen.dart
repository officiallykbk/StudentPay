import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:students_pay/screens/studentspay_navBar.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  String isSelected = "All";

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
            "My Transactions",
            style: GoogleFonts.inter(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Column(children: [
            Row(children: [
              rowButton(text: "All"),
              rowButton(text: "Deposit"),
              rowButton(text: "Sent"),
              rowButton(text: "Withdrawn"),
              const Spacer(),
              InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {
                  setState(() {
                    isSelected = "Sort";
                  });
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: isSelected == "Sort"
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Icon(
                      Icons.tune_outlined,
                      color: isSelected == "Sort" ? Colors.white : Colors.black,
                    )),
              ),
            ]),
            const SizedBox(
              height: 9,
            ),
            const Row(children: [
              Text("Thu,14th Sept"),
              Text(" - "),
              Text("Fri,17th Oct"),
              Spacer(),
              Text("Last 20 Days"),
            ]),
            const SizedBox(
              height: 11,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(children: [
                        CircleAvatar(
                          child: Image.asset("assets/images/groceries.jpeg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Groceries",
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                              ),
                              const Row(
                                children: [
                                  Text("Fri, 14th Oct "),
                                  Text("3:30pm"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Text("-\$45.67"),
                      ]),
                    );
                  }),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Print Transaction",
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }

  InkWell rowButton({required String text}) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () {
        setState(() {
          isSelected = text;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isSelected == text ? Colors.black : Colors.transparent,
          border: Border.all(style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: isSelected == text ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

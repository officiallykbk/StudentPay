import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/pay/student/student_amount_screen.dart';
import 'package:students_pay/screens/pay_screens/pay/payment_types_screen.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class StudentPayScreen extends StatefulWidget {
  const StudentPayScreen({super.key});

  @override
  State<StudentPayScreen> createState() => _StudentPayScreenState();
}

class _StudentPayScreenState extends State<StudentPayScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PaymentTypesScreen(),
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
              const Progress(indicator: 0.4),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Enter Name of Student",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700)),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.center,
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(style: BorderStyle.solid)),
                width: width,
                child: TextField(
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const StudentAmountScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: Container(
                    height: 50,
                    width: width,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        borderRadius: BorderRadius.circular(24)),
                    child: Center(
                      child: Text(
                        "Next",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:students_pay/screens/home_scren.dart';
import 'package:students_pay/screens/studentspay_navBar.dart';

import 'referencepages.dart';

class Finale extends StatelessWidget {
  const Finale({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    opener() {
      return const NavBar();
    }

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppTop(name: "Send Money"),
        ),
        body: Column(
          children: [
            // Progress bar
            const Progress(indicator: 1.0),
            const Text(
              'Transaction Report',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap:
                  // general == ''
                  //     ? () {}
                  //     :
                  () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => opener()),
                      (route) => false),
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
                    child: Text("Go To Home",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

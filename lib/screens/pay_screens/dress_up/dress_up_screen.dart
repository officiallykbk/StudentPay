import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:students_pay/screens/studentspay_navbar.dart';

class DressUpScreen extends StatefulWidget {
  const DressUpScreen({super.key});

  @override
  State<DressUpScreen> createState() => _DressUpScreenState();
}

class _DressUpScreenState extends State<DressUpScreen> {
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
          "Dress Up",
          style: GoogleFonts.inter(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        ),
        centerTitle: true,
      ),
    );
  }
}

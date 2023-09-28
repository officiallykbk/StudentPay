// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsField extends StatefulWidget {
  int selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  OptionsField({super.key, required this.options});
  final String options;

  @override
  State<OptionsField> createState() => _OptionsFieldState();
}

void setState(Null Function() param0) {}

class _OptionsFieldState extends State<OptionsField> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Row(
          children: [
            InkWell(
              customBorder: StadiumBorder(),
              splashColor: Colors.black,
              onTap: () {},
              child: Container(
                width: width * 0.3,
                height: 45,
                decoration: BoxDecoration(
                    border: const Border.fromBorderSide(
                        BorderSide(style: BorderStyle.solid)),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    widget.options,
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

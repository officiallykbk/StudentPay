// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/learnScreenPages/CoursePage.dart';

class learning_recent_post_component extends StatefulWidget {
  const learning_recent_post_component(
      {required this.backColor,
      required this.facilitator,
      required this.experience,
      required this.no_of_lessons,
      required this.no_of_hours,
      super.key});

  final Color backColor;
  final String facilitator;
  final int experience;
  final int no_of_lessons;
  final int no_of_hours;

  @override
  State<learning_recent_post_component> createState() =>
      _learning_recent_post_componentState();
}

class _learning_recent_post_componentState
    extends State<learning_recent_post_component> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 240,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.backColor,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 30,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CoursePage();
                }))
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 15,
                child: Icon(
                  Icons.arrow_outward_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 200,
          child: Text(
            "Fundamental principles Of Money",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Students"),
                Stack(children: [
                  Container(
                    width: 60,
                  ),
                  Positioned(
                    child: CircleAvatar(
                        maxRadius: 7,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 6.png")),
                  ),
                  Positioned(
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                      maxRadius: 7,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                      maxRadius: 7,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: CircleAvatar(
                        maxRadius: 7,
                        backgroundImage:
                            AssetImage("assets/images/Ellipse 9.png")),
                  ),
                ])
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Ellipse 10.png"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.facilitator,
                      style: GoogleFonts.inter(),
                    ),
                    Text(
                      "${widget.experience} years exp",
                      style: GoogleFonts.inter(
                          fontSize: 12, color: Colors.black.withOpacity(0.6)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 2,
          color: Colors.black.withOpacity(0.2),
        ),
        SizedBox(
          height: 10,
        ),
        Text("${widget.no_of_lessons} Lessons (${widget.no_of_hours}+ hours)")
      ]),
    );
  }
}

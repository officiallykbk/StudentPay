// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseOverviewPage extends StatefulWidget {
  const CourseOverviewPage({super.key});

  @override
  State<CourseOverviewPage> createState() => _CourseOverviewPageState();
}

class _CourseOverviewPageState extends State<CourseOverviewPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var space = SizedBox(
      height: 30,
    );
    double _actualPercent = 8;
    double _progress = _actualPercent / 100;
    String facilitator = "Prof Evans";
    int experience = 10;

    var courseDetail =
        "This first lesson seeks to give you the basic principles of money. It goes further to give you the history and how far money has evolvedThis first lesson seeks to give you the basic principles of money. It goes further to give you the history and how far money has evolved";

    var courseGoal =
        "This first lesson seeks to give you the basic principles of money. It goes further to give you the history and how far money has evolvedThis first lesson seeks to give you the basic principles of money. It goes further to give you the history and  how far money has evolved";

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          title: Text(
            "Course Overview",
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(children: [
            Row(
              children: [
                Icon(
                  Icons.play_circle_outline,
                  size: 50,
                ),
                SizedBox(
                  width: width - 100,
                  child: Text(
                    "Fundamental Principles of Money",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            space,
            SizedBox(
              width: width - 50,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    width: 170,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(235, 248, 255, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tutor"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              maxRadius: 15,
                              backgroundImage:
                                  AssetImage("assets/images/Ellipse 10.png"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  facilitator,
                                  style: GoogleFonts.inter(),
                                ),
                                Text(
                                  "$experience years exp",
                                  style: GoogleFonts.inter(
                                      fontSize: 10,
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(235, 248, 255, 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Progress"),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              backgroundColor: Colors.black.withOpacity(0.6),
                              value: _progress,
                              valueColor: AlwaysStoppedAnimation(Colors.black),
                              strokeWidth: 4,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "$_actualPercent%",
                              style: GoogleFonts.inter(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            space,
            Container(
              padding: EdgeInsets.all(10),
              height: 120,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Course Details",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    courseDetail,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        color: Colors.black.withOpacity(0.6), fontSize: 12),
                  )
                ],
              ),
            ),
            space,
            Container(
              padding: EdgeInsets.all(10),
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Goal Of Course",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    courseGoal,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        color: Colors.black.withOpacity(0.6), fontSize: 12),
                  )
                ],
              ),
            ),
            space,
            Container(
              padding: EdgeInsets.all(10),
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xFFF1FAFF)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Take A Quiz",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Opacity(
                      opacity: 0.6,
                      child: Text(
                        "This first lesson seeks to give you the basic principles of money. It goes further to give you the history and how far money has evolvedThis first lesson seeks to",
                        style: GoogleFonts.inter(fontSize: 12),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side:
                                    BorderSide(width: 2, color: Colors.black)),
                            fixedSize: Size(width, 50)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CourseOverviewPage();
                          }));
                        },
                        child: Text(
                          "Attempt Quiz",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                  ]),
            ),
            space,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(width, 50)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CourseOverviewPage();
                  }));
                },
                child: Text(
                  "Take Lesson",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white),
                )),
          ]),
        ));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/learnScreenPages/CourseOverviewPage.dart';
import 'package:students_pay/screens/learnScreenPages/Learn_Screen_Components/contentComponent.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var List = [
      {"subtopic": "Have A Generous Mindset", "duration": "16.01"},
      {"subtopic": "Set Clear Goals", "duration": "14.30"},
      {"subtopic": "Effective Time Management", "duration": "18.45"},
    ];
    int index = 1;

    var space = SizedBox(
      height: 8,
    );
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new))),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fundamental principles Of Money",
                style: GoogleFonts.inter(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              space,
              Container(
                height: 200,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(217, 217, 217, 1)),
              ),
              space,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var element in List)
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${index++}. ${element["subtopic"]}",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold),
                              ),
                              space,
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(10),
                                height: 100,
                                width: width - 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(254, 255, 208, 1)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Video Details",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "This first lesson seeks to give you the basic principles of money. It goes further to give you the history and how far money has evolved",
                                        style: GoogleFonts.inter(
                                            fontSize: 12,
                                            color:
                                                Colors.black.withOpacity(0.6)),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                  ],
                ),
              ),
              space,
              space,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(width: 2, color: Colors.black)),
                      fixedSize: Size(width, 50)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CourseOverviewPage();
                    }));
                  },
                  child: Text(
                    "Course Overview",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  )),
              space,
              space,
              SizedBox(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Content",
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  space,
                  SizedBox(
                    height: 218,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        for (var element in List)
                          ContentComponent(
                              subtopic: "${element["subtopic"]}",
                              videoDuration: "16.01")
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}

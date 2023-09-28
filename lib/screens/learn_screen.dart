// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/learnScreenPages/Learn_Screen_Components/categoriesComponent.dart';
import 'package:students_pay/screens/learnScreenPages/Learn_Screen_Components/moneyTalkComponent.dart';
import 'package:students_pay/screens/learnScreenPages/Learn_Screen_Components/recentPostsComponent.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    int points = 17537;

    var space = SizedBox(
      height: 15,
    );

    final inputController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Learn",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              child: Row(children: [
                Image.asset("assets/images/star1.png"),
                Text("$points"),
                Icon(Icons.notifications)
              ]),
            )
          ]),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              SizedBox(
                child: Text(
                    "Each learning activity completed will attract points for the user that can be redeemed on Cash",
                    style: GoogleFonts.inter(
                        color: Colors.black.withOpacity(0.6))),
              ),
              space,
              TextField(
                controller: inputController,
                onChanged: (value) {
                  print(value);
                },
                cursorColor: Colors.black,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
                decoration: InputDecoration(
                    focusColor: Colors.black,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 20, color: Colors.black.withOpacity(0.6))),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search Title",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 1)),
              ),
              space,
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Categories",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                space,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 1.25 * width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          learn_categories_component(category: "Money"),
                          learn_categories_component(category: "Savings"),
                          learn_categories_component(category: "Earning"),
                          learn_categories_component(category: "Budgeting"),
                          learn_categories_component(category: "Investment"),
                        ],
                      ),
                    ))
              ]),
              space,
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Recent Posts",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                space,
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: 1.9 * width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          learning_recent_post_component(
                            backColor: Color.fromRGBO(235, 248, 255, 1),
                            facilitator: "Prof Evans",
                            experience: 10,
                            no_of_lessons: 30,
                            no_of_hours: 10,
                          ),
                          learning_recent_post_component(
                            backColor: Color.fromRGBO(235, 248, 255, 1),
                            facilitator: "Prof Evans",
                            experience: 10,
                            no_of_lessons: 30,
                            no_of_hours: 10,
                          ),
                          learning_recent_post_component(
                            backColor: Color.fromRGBO(235, 248, 255, 1),
                            facilitator: "Prof Evans",
                            experience: 10,
                            no_of_lessons: 30,
                            no_of_hours: 10,
                          ),
                        ],
                      ),
                    )),
                space,
                Text(
                  "Money Talk",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    child: SizedBox(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      moneyTalkComponent(),
                      moneyTalkComponent(),
                      moneyTalkComponent(),
                      moneyTalkComponent()
                    ],
                  ),
                )),
              ])
            ],
          ),
        ));
  }
}

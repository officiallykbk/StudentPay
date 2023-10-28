// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MicroJobCustomContainer extends StatelessWidget {
  const MicroJobCustomContainer(
      {super.key,
      required this.title,
      required this.location,
      required this.eventTitle,
      required this.eventDescription,
      required this.color});
  final String title;
  final String location;
  final String eventTitle;
  final String eventDescription;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Container(
        height: screenSize.height / 2.9,
        width: screenSize.width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Color(0xFF859AAC),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 2),
                          spreadRadius: 1,
                          blurRadius: 14,
                          color: Colors.grey.shade900,
                        ),
                        BoxShadow(
                          offset: Offset(-1, -2),
                          spreadRadius: 1,
                          blurRadius: 15,
                          color: Colors.grey.shade600,
                        ),
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey.shade300,
                            Colors.grey.shade600,
                          ],
                          stops: [
                            0.1,
                            0.9
                          ]),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 60, bottom: 5),
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 19,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          location,
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  eventTitle,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 21,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5, right: 10),
              child: Text(
                eventDescription,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

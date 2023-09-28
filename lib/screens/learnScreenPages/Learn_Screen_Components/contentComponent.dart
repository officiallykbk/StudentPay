// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContentComponent extends StatelessWidget {
  const ContentComponent(
      {required this.subtopic, required this.videoDuration, super.key});

  final String subtopic;
  final String videoDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          width: MediaQuery.sizeOf(context).width,
          height: 60,
          decoration: BoxDecoration(
              color: Color.fromRGBO(235, 248, 255, 1),
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(width: 1, color: Colors.black.withOpacity(0.20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Icon(Icons.play_circle_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(subtopic), Text(videoDuration)],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

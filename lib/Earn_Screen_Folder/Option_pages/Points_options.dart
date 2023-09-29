// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PointsOptionPage extends StatefulWidget {
  const PointsOptionPage({super.key});

  @override
  State<PointsOptionPage> createState() => _PontsPageState();
}

class _PontsPageState extends State<PointsOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Points Page',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

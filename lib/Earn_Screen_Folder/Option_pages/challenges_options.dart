// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChallengeOptions extends StatelessWidget {
  const ChallengeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Challenges Page',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MicrojobsOptions extends StatefulWidget {
  const MicrojobsOptions({super.key});

  @override
  State<MicrojobsOptions> createState() => _MicrojobsOptionsState();
}

class _MicrojobsOptionsState extends State<MicrojobsOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'MicroJobs Page',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SubscribeOptionPage extends StatefulWidget {
  const SubscribeOptionPage({super.key});

  @override
  State<SubscribeOptionPage> createState() => _SubscribeOptionState();
}

class _SubscribeOptionState extends State<SubscribeOptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text(
                'Subscribe Pagess',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
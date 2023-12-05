import 'package:flutter/material.dart';
import 'package:students_pay/screens/studentspay_navbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StudentsPay",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      home: const NavBar(
        currentIndex: 0,
      ),
    );
  }
}

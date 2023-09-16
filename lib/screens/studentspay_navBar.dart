import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:students_pay/screens/home_scren.dart';
import 'package:students_pay/screens/learn_screen.dart';
import 'package:students_pay/screens/studentsPay_screen.dart';
import 'package:students_pay/screens/subscription_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _screens = [
    const HomeScren(),
    const PayScreen(),
    const LearnScreen(),
    const SubscriptionScreen(),
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: _screens[_index],
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.only(right: 10.0, left: 10.0, bottom: 6.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(24)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 24.0, right: 23.0, bottom: 10.0),
                child: GNav(
                  onTabChange: (value) {
                    setState(() {
                      _index = value;
                    });
                  },
                  backgroundColor: Colors.grey,
                  activeColor: Colors.white,
                  color: Colors.black,
                  tabBackgroundColor: Colors.black,
                  padding: const EdgeInsets.all(8),
                  tabs: const [
                    GButton(
                      icon: Icons.home_outlined,
                    ),
                    GButton(
                      icon: Icons.account_balance_wallet_outlined,
                    ),
                    GButton(
                      icon: Icons.play_lesson_outlined,
                    ),
                    GButton(
                      icon: Icons.work_outline,
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

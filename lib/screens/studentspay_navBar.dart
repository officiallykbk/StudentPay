import 'package:flutter/material.dart';
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
                const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Theme(
                data: ThemeData(canvasColor: Colors.grey.shade800),
                child: NavigationBar(
                  height: 58,
                  indicatorShape: CircleBorder(),
                  // selectedIconTheme: IconThemeData(color: Colors.blue),
                  // enableFeedback: false,
                  // selectedItemColor: Colors.black,
                  selectedIndex: _index,
                  // onTap: (value) {
                  //   setState(() {
                  //     _index = value;
                  //   });
                  // },
                  // items: [
                  //   BottomNavigationBarItem(
                  //       icon: Image.asset("assets/images/hom.png"), label: ""),
                  //   BottomNavigationBarItem(
                  //       icon: Image.asset("assets/images/wallet.png"),
                  //       label: ""),
                  //   BottomNavigationBarItem(
                  //       icon: Image.asset("assets/images/learn.png"),
                  //       label: ""),
                  //   BottomNavigationBarItem(
                  //       icon: Image.asset("assets/images/earn.png"), label: ""),
                  // ],
                  indicatorColor: Colors.black,

                  onDestinationSelected: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  destinations: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: NavigationDestination(
                          selectedIcon: Image.asset(
                            "assets/images/hom.png",
                            color: Colors.white,
                          ),
                          icon: Image.asset("assets/images/hom.png"),
                          label: ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: NavigationDestination(
                          selectedIcon: Image.asset(
                            "assets/images/wallet.png",
                            color: Colors.white,
                          ),
                          icon: Image.asset("assets/images/wallet.png"),
                          label: ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: NavigationDestination(
                          selectedIcon: Image.asset(
                            "assets/images/learn.png",
                            color: Colors.white,
                          ),
                          icon: Image.asset("assets/images/learn.png"),
                          label: ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: NavigationDestination(
                          selectedIcon: Image.asset(
                            "assets/images/earn.png",
                            color: Colors.white,
                          ),
                          icon: Image.asset("assets/images/earn.png"),
                          label: ""),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

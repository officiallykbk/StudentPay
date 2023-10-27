// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/components/Savings_field.dart';
import 'package:students_pay/Earn_Screen_Folder/components/options.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';
import 'package:students_pay/Earn_Screen_Folder/widgets/MicroJobs/Microjob_custom_container.dart';

class MicrojobsOptions extends StatefulWidget {
  const MicrojobsOptions({super.key});

  @override
  State<MicrojobsOptions> createState() => _MicrojobsOptionsState();
}

class _MicrojobsOptionsState extends State<MicrojobsOptions> {
  int? selectedIndex;
  void updateSelectedIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Earn",
          style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 40,
                width: 23,
                child: Image(
                  image: AssetImage("assets/images/star1.png"),
                ),
              ),
              Text(
                "17,537",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                width: 1,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Savings(),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: OptionsField(
                    currentUser: 1,
                    // Pass the callback function to OptionsField
                    updateSelectedIndex: updateSelectedIndex,
                    index: 0,
                    options: 'Subscribe',
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 1,
                  options: 'Referral',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 2,
                  options: 'Points',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 3,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 3,
                  options: 'Microjobs',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 4,
                  options: 'Challenge',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 25),
            child: Text(
              'Student Monthly Subscription',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SubscriptionInfo(
              icon: Image.asset(
                'assets/images/offer.png', // Replace with your image path
                width: 24, // Adjust the width as needed
                height: 24, // Adjust the height as needed
                // Add any decoration if needed
              ),
              info:
                  'Start earning up to 1000 a month including no transaction fees',
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SubscriptionInfo(
              info: 'Subscribe to get more points',
              icon: Image.asset(
                'assets/images/cash.png', // Replace with your image path
                width: 24, // Adjust the width as needed
                height: 24, // Adjust the height as needed
                // Add any decoration if needed
              ),
            ),
          ),
          SizedBox(height: 15),
          MicroJobCustomContainer(
            color: Color(0xFF7FB6E4),
            title: 'Rap Battle',
            location: 'Brunei Sports Complex',
            eventTitle: 'Ticket Sales',
            eventDescription:
                'Join our Team in selling Our Music Semester events tickets on and off campus from now till 22nd January. you,ve a 50% addition commisiion for you once you hit your target',
          ),
          SizedBox(height: 20),
          MicroJobCustomContainer(
            color: Color(0xFFEBBC66),
            title: 'Microjob Title',
            location: 'Location',
            eventTitle: 'Event Title',
            eventDescription: 'Event Description',
          ),
          SizedBox(height: 20),
          MicroJobCustomContainer(
            color: Color(0xFFEBBC66),
            title: 'Microjob Title',
            location: 'Location',
            eventTitle: 'Event Title',
            eventDescription: 'Event Description',
          ),
          SizedBox(height: 20),
          MicroJobCustomContainer(
            color: Color(0xFF75E697),
            title: 'Microjob Title',
            location: 'Location',
            eventTitle: 'Event Title',
            eventDescription: 'Event Description',
          ),
          SizedBox(height: 20),
          MicroJobCustomContainer(
            color: Color(0xFF46998B),
            title: 'Microjob Title',
            location: 'Location',
            eventTitle: 'Event Title',
            eventDescription: 'Event Description',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';
import 'package:students_pay/Earn_Screen_Folder/widgets/MicroJobs/Microjob_custom_container.dart';

class MicrojobsOptions extends StatefulWidget {
  const MicrojobsOptions({super.key});
  @override
  State<MicrojobsOptions> createState() => _MicrojobsOptionsState();
}

class _MicrojobsOptionsState extends State<MicrojobsOptions> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 25),
              child: Text(
                'Student Monthly Subscription',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SubscriptionInfo(
                icon: Image.asset(
                  'assets/images/offer.png',
                  width: 24,
                  height: 24,
                ),
                info:
                    'Start earning up to 1000 a month including no transaction fees',
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SubscriptionInfo(
                info: 'Subscribe to get more points',
                icon: Image.asset(
                  'assets/images/cash.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const MicroJobCustomContainer(
              color: Color(0xFF9FE47F),
              title: 'Survey',
              location: 'Brunei Sports Complex',
              eventTitle: 'Ticket Sales',
              eventDescription:
                  'Join our Team in selling Our Music Semester events tickets on and off campus from now till 22nd January. you,ve a 50% addition commisiion for you once you hit your target',
            ),
            const SizedBox(height: 20),
            const MicroJobCustomContainer(
              color: Color(0xFFAAEEB8),
              title: 'Tech Event',
              location: 'Brunei Sports Complex',
              eventTitle: 'Ticket Sales',
              eventDescription:
                  'Join our Team in selling Our Music Semester events tickets on and off campus from now till 22nd January. you,ve a 50% addition commisiion for you once you hit your target',
            ),
            const SizedBox(height: 20),
            const MicroJobCustomContainer(
              color: Color(0xFF7FB6E4),
              title: 'Rap Battle',
              location: 'Brunei Sports Complex',
              eventTitle: 'Ticket Sales',
              eventDescription:
                  'Join our Team in selling Our Music Semester events tickets on and off campus from now till 22nd January. you,ve a 50% addition commisiion for you once you hit your target',
            ),
            const SizedBox(height: 20),
            const MicroJobCustomContainer(
              color: Color(0xFFF8B190),
              title: 'Rap Battle',
              location: 'Brunei Sports Complex',
              eventTitle: 'Ticket Sales',
              eventDescription:
                  'Join our Team in selling Our Music Semester events tickets on and off campus from now till 22nd January. you,ve a 50% addition commisiion for you once you hit your target',
            ),
            const SizedBox(height: 20),
            const MicroJobCustomContainer(
              color: Color(0xFFFF9494),
              title: 'Rap Battle',
              location: 'Brunei Sports Complex',
              eventTitle: 'Ticket Sales',
              eventDescription:
                  'Join our Team in selling Our Music Semester events tickets on and off campus from now till 22nd January. you,ve a 50% addition commisiion for you once you hit your target',
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
      child: SizedBox(
        height: 150,
        child: Container(
          padding: EdgeInsets.only(left: 1, top: 20, bottom: 10),
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Color(0xDDF0A7A7),
              borderRadius: BorderRadius.circular(27),
              border:
                  Border.all(width: 1, color: Colors.black.withOpacity(0.20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Text(
                  'You have no active Subscription',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w900)),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 9),
                  child: Text(
                    'Explore the subscriptions below and receive exciting benefits and packages ',
                    style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

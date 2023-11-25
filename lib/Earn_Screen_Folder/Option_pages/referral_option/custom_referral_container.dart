import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReferralContainer extends StatelessWidget {
  const CustomReferralContainer({super.key, this.numberOfUsers, this.points});
  final int? numberOfUsers;
  final int? points;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 5),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 201, 229, 255),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black.withOpacity(0.20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person,
                          size: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 18),
                          child: Column(
                            children: [
                              Text(
                                numberOfUsers.toString(),
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Text(
                                'Users',
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 15, top: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      'Total Referrals',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Color(0xFFFFF8B4),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black.withOpacity(0.20),
                ),
              ),
              child: Column(
                children: [
                  //put two items in a row which are spaced evenly with the first one an icon and the second a star image
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 12,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 25, right: 8, left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            size: 30,
                          ),
                          Column(
                            children: [
                              Text(
                                points.toString(),
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: Row(
                      children: [
                        Text(
                          'Points Accumulated',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

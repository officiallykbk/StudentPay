import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Pay",
          style: GoogleFonts.inter(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        ),
        actions: [
          Row(
            children: [
              const SizedBox(
                  height: 40,
                  width: 20,
                  child: Image(
                    image: AssetImage("assets/images/star1.png"),
                  )),
              Text(
                "17,537",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(fontWeight: FontWeight.w400)),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Balance",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "\$20,903.00",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w700)),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      customBorder: const StadiumBorder(),
                      splashColor: Colors.white24,
                      onTap: () {},
                      child: Container(
                        constraints: const BoxConstraints(
                            maxHeight: 50,
                            maxWidth: 180,
                            minHeight: 30,
                            minWidth: 108),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "My Wallets",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      customBorder: const StadiumBorder(),
                      splashColor: Colors.black12,
                      onTap: () {},
                      child: Container(
                        constraints: const BoxConstraints(
                            maxHeight: 50,
                            maxWidth: 180,
                            minHeight: 30,
                            minWidth: 108),
                        decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                                BorderSide(style: BorderStyle.solid)),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Transactions",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                height: height * 0.55,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: const Border.fromBorderSide(
                        BorderSide(style: BorderStyle.solid))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 23, right: 24),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick Pay",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          customBorder: const StadiumBorder(),
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 110,
                                maxWidth: 150,
                                minHeight: 55,
                                minWidth: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(style: BorderStyle.solid))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Pizzaman",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          customBorder: const StadiumBorder(),
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 110,
                                maxWidth: 150,
                                minHeight: 55,
                                minWidth: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(style: BorderStyle.solid))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Netflix",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          customBorder: const StadiumBorder(),
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 110,
                                maxWidth: 150,
                                minHeight: 55,
                                minWidth: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(style: BorderStyle.solid))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Spotify",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          customBorder: const StadiumBorder(),
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 110,
                                maxWidth: 150,
                                minHeight: 55,
                                minWidth: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(style: BorderStyle.solid))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Udemy",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          customBorder: const StadiumBorder(),
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 110,
                                maxWidth: 150,
                                minHeight: 55,
                                minWidth: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(style: BorderStyle.solid))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Dstv",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          customBorder: const StadiumBorder(),
                          splashColor: Colors.black12,
                          onTap: () {},
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 110,
                                maxWidth: 150,
                                minHeight: 55,
                                minWidth: 60),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(style: BorderStyle.solid))),
                            child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "E-book",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: height / 100 * 2,
              ),
              InkWell(
                customBorder: const StadiumBorder(),
                splashColor: Colors.grey,
                onTap: () {},
                child: Container(
                  constraints:
                      const BoxConstraints(maxHeight: 40, minHeight: 16),
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    "Pay",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  )),
                ),
              )
            ]),
      ),
    );
  }
}

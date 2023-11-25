import 'package:flutter/material.dart';
import 'send_finale.dart';
import 'referencepages.dart';

class TransSum extends StatelessWidget {
  const TransSum({super.key});

  opener(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const Finale()));
  }

  @override
  Widget build(BuildContext context) {
    double amount_sent = 8700.54;
    String receiver_name = "Glover Smith";
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppTop(name: "Send Money"),
      ),
      body: Column(
        children: [
          // Progress bar
          const Progress(indicator: 0.8),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Confirm Transaction",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Container(
                width: screenWidth - 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.black.withOpacity(0.20000000298023224),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Recipient Information',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          // To be made clickable
                          Container(
                            child: Text(
                              "Edit",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          // To be replaced by recipient information
                          const Text(
                            "Glover Smith",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '054 854 4589',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: screenWidth - 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.black.withOpacity(0.20000000298023224),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Amount",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          // To be made clickable
                          Container(
                            child: Text(
                              "Edit",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black
                                    .withOpacity(0.6000000238418579),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          // To be replaced by amount being sent
                          Text(
                            "GhC 8,700.54",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )),
          GestureDetector(
            onTap: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                      "Are you sure you want to send GHC$amount_sent to $receiver_name?"),
                  backgroundColor: Colors.white,
                  actions: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(24),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(style: BorderStyle.solid),
                            ),
                            child: const Text("Cancel"),
                          ),
                        ),
                        const SizedBox(height: 5),
                        InkWell(
                          borderRadius: BorderRadius.circular(24),
                          onTap: () => opener(context),
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(style: BorderStyle.solid),
                            ),
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: 20),
                width: screenWidth - 50,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Center(
                  child: Text("Confirm",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

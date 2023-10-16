import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:students_pay/screens/sendScreenPages/send.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

// look into wallettec
class _HomeScrenState extends State<HomeScren> {
  double balance = 20903;
  final List<String> receivernames = [
    "Tether",
    "Liam",
    "Olivia",
    "Noah",
    "Ava",
    "Isabella",
    "Sophia",
    "Mia",
    "Charlotte",
    "Amelia",
    "Harper",
    "Evelyn",
    "Abigail",
    "Emily",
    "Elizabeth",
    "Sofia",
    "Avery",
    "Ella",
    "Scarlett",
    "Grace",
    "Lucas",
    "Benjamin",
    "Henry",
    "Alexander",
    "James",
    "William",
    "Michael",
    "Daniel",
    "Ethan",
    "Sophia",
    "Madison",
    "Aiden",
    "Oliver",
    "Elijah",
    "Matthew",
    "Samuel",
    "David",
    "Joseph",
    "Jackson",
    "Logan",
    "Evelyn",
    "Victoria",
    "Penelope",
    "Riley",
    "Aria",
    "Lily",
    "Aurora",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 94.5,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(Icons.run_circle),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TO BE REPLACED BY DATE DETERMINING FUNCTION
                    Text("Good Morning",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                    // TO BE REPLACED BY NAME DETERMING FUNCTION
                    Text("Travis White",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700))
                  ],
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  SvgPicture.asset("assets/svgassets/subscriptionIcon.svg"),
                  // TO BE REPLACED BY DATA DETERMING FUNCTION
                  const Text("17,000",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications)),
                ],
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Your Balance", style: TextStyle(fontSize: 15)),
                    Text("₵$balance",
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      child: Container(
                        height: 80,
                        width: 90,
                        margin: const EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset("assets/svgassets/send.svg"),
                            const Text("Send",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700))
                          ],
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const SendMoney()))),
                  Container(
                    height: 80,
                    width: 90,
                    margin: const EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset("assets/svgassets/withdraw.svg"),
                        const Text("Withdraw",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 90,
                    margin: const EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset("assets/svgassets/deposit.svg"),
                        const Text("Deposit",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700))
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: 150,
                margin: const EdgeInsets.only(
                    top: 16, right: 24, left: 24, bottom: 16),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 120,
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Quick Send",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                      receivernames.isEmpty
                          ? const Expanded(
                              child: Center(
                                  child: Text(
                                "Make transactions to get Quick Options",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 57, 58, 57)),
                                textAlign: TextAlign.center,
                              )),
                            )
                          : SizedBox(
                              height: 70,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: receivernames.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                            child: Icon(Icons.person)),
                                        Text(receivernames[index],
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  );
                                },
                              ),
                            )
                    ],
                  ),
                ),
              ),
              Container(
                height:
                    receivernames.length < 3 ? 150 : receivernames.length * 62,
                margin: const EdgeInsets.only(top: 16, right: 23, left: 24),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Transactions",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                        Text("See All",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400))
                      ],
                    ),
                    const SizedBox(height: 17),
                    receivernames.isEmpty
                        ? const Expanded(
                            child: Center(
                                child: Text(
                              "There are no recent transactions",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 57, 58, 57)),
                              textAlign: TextAlign.center,
                            )),
                          )
                        : Expanded(
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: receivernames.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                                child: Icon(Icons.person)),
                                            const SizedBox(width: 5),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // TO BE REPLACED BY NAME DETERMING FUNCTION
                                                Text(
                                                  receivernames[index],
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                // TO BE REPLACED BY TRANSACTION DATE DETERMINING FUNCTION
                                                const Text("Fri, 14 Oct 3:30pm",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      // REPLACE TEXT WITH LOST CASH
                                      const Expanded(
                                        flex: 2,
                                        child: Text(
                                          "-3000.00",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}

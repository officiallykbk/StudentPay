import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/delivery_shop_screen.dart';
import 'package:students_pay/screens/pay_screens/dress_up_screen.dart';
import 'package:students_pay/screens/pay_screens/jean_shop_screen.dart';
import 'package:students_pay/screens/pay_screens/payment_methods.dart';
import 'package:students_pay/screens/pay_screens/pizza_screen.dart';
import 'package:students_pay/screens/pay_screens/purchase_airtime.dart';
import 'package:students_pay/screens/pay_screens/transaction_screen.dart';

import 'package:students_pay/screens/pay_screens/wallet_screen.dart';

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
        automaticallyImplyLeading: false,
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
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ButtonWidget(
                      screen: WalletScreen(),
                      containerColor: Colors.black,
                      text: "My Wallets",
                      textColor: Colors.white,
                    ),
                    Spacer(),
                    ButtonWidget(
                      screen: TransactionsScreen(),
                      containerColor: null,
                      text: "Transactions",
                      textColor: null,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: height * 0.54,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QuickItem(
                          text: "Airtime",
                          icon: Icons.call_outlined,
                          screen: PurchaseAirtimeScreen(),
                        ),
                        QuickItem(
                          text: "Data",
                          icon: Icons.online_prediction_outlined,
                          screen: PurchaseAirtimeScreen(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QuickItem(
                          text: "Pizza",
                          icon: Icons.local_pizza_outlined,
                          screen: PizzaScreen(),
                        ),
                        QuickItem(
                          text: "Delivery",
                          icon: Icons.local_shipping_outlined,
                          screen: DeliveryScreen(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        QuickItem(
                          text: "Jean Shop",
                          icon: Icons.local_mall_outlined,
                          screen: JeanShopScreen(),
                        ),
                        QuickItem(
                          text: "Dress up",
                          icon: Icons.store_outlined,
                          screen: DressUpScreen(),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const Spacer(),
              InkWell(
                customBorder: const StadiumBorder(),
                splashColor: Colors.grey,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PaymentMethodsScreen(),
                    ),
                  );
                },
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

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Widget screen;
  final Color? containerColor;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.containerColor,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const StadiumBorder(),
      splashColor: Colors.white24,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        constraints: const BoxConstraints(
            maxHeight: 50, maxWidth: 180, minHeight: 30, minWidth: 108),
        decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid),
            color: containerColor,
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
                textStyle: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}

class QuickItem extends StatelessWidget {
  final Widget? screen;
  final String text;
  final IconData icon;
  const QuickItem({
    super.key,
    this.screen,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const StadiumBorder(),
      splashColor: Colors.black12,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => screen!,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        constraints: const BoxConstraints(
            maxHeight: 110, maxWidth: 150, minHeight: 55, minWidth: 60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: const Border.fromBorderSide(
                BorderSide(style: BorderStyle.solid))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 40,
            ),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

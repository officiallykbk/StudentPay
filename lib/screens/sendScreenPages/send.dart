import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'referencepages.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset("assets/svgassets/back_button.svg"),
          ),
        ),
        title: const Text("Send Money",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
        centerTitle: true,
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: SvgPicture.asset("assets/svgassets/options.svg"))
        ],
      ),
      body: Column(
        children: [
          // Progress bar
          Container(
            height: 5,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: const LinearProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.transparent,
              value: 0.2,
            ),
          ),
          const Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Payment Method",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ),
              SendMethod(
                  method: "StudentPay-to-StudentPay",
                  pngname: "studentpaymode.svg"),
              SendMethod(method: "Mobile Money", pngname: "momo.svg"),
              SendMethod(method: "Bank", pngname: "bank.svg")
            ],
          )),
          // const Spacer(),
          GestureDetector(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(8),
                width: 350,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Text("Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

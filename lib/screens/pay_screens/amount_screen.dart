import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/screens/pay_screens/password_screen.dart';

import 'package:students_pay/screens/pay_screens/payment_methods.dart';

import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

class AmountScreen extends StatefulWidget {
  const AmountScreen({super.key});

  @override
  State<AmountScreen> createState() => _AmountScreenState();
}

class _AmountScreenState extends State<AmountScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    buttonPressed({required String buttonText}) {
      setState(() {
        if (buttonText == "x") {
          _controller.text =
              _controller.text.substring(0, _controller.text.length - 1);
        } else {
          _controller.text = _controller.text + buttonText;
        }
      });
    }

    Widget buildButton({required String buttonText}) {
      return InkWell(
        radius: 2,
        borderRadius: BorderRadius.circular(30),
        onTap: () => buttonPressed(buttonText: buttonText),
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          height: 50,
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.black, fontSize: 40),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PaymentMethodsScreen(),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.back)),
          title: Text(
            "Pay",
            style: GoogleFonts.inter(
                textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Progress(indicator: 0.5),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Enter Amount",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  alignment: Alignment.center,
                  height: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(style: BorderStyle.solid)),
                  width: width,
                  child: Row(children: [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9.0),
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                        )),
                    Column(
                      children: [
                        Text(
                          "Glover Smith",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400)),
                        ),
                        const Text("878 784 xxx"),
                      ],
                    )
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 145,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(style: BorderStyle.solid)),
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w700)),
                      showCursor: true,
                      controller: _controller,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PasswordScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Container(
                      height: 50,
                      width: width,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          borderRadius: BorderRadius.circular(24)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/wallet_type_screen.dart';
import 'package:students_pay/screens/pay_screens/my_wallets/wallet_type/students_pay/studentsPay_wallet_password_scree.dart';
import 'package:students_pay/screens/sendScreenPages/referencepages.dart';

const List<String> dropdownMenuItem = ["Earning", "Spending"];

class StudentsPayWalletScreen extends StatefulWidget {
  const StudentsPayWalletScreen({super.key});

  @override
  State<StudentsPayWalletScreen> createState() =>
      _StudentsPayWalletScreenState();
}

class _StudentsPayWalletScreenState extends State<StudentsPayWalletScreen> {
  String item = dropdownMenuItem.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WalletTypeScreen(),
                ),
              );
            },
            icon: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Students Pay",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Progress(indicator: 0.2),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Select type of Wallet",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
              child: DropdownButton(
                underline: const SizedBox(),
                hint: const Text("Earning"),
                iconEnabledColor: Colors.black,
                isExpanded: true,
                onChanged: (String? value) {
                  setState(() {
                    item = value!;
                  });
                },
                value: item,
                items: dropdownMenuItem.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Enter Account Number",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(),
              ),
              child: const TextField(
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Account number",
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const StudentsPayPasswordScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 17),
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

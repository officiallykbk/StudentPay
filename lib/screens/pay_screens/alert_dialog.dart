import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
          const Text("Are you sure you want to transfer GHC8700.54 to Glover?"),
      backgroundColor: Colors.white,
      content: Container(
        height: 62,
        width: 62,
        decoration:
            const BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
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
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(style: BorderStyle.solid),
                  ),
                  child: const Text(
                    "Proceed",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

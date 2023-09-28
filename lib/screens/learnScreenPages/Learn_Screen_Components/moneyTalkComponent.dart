import 'package:flutter/material.dart';

class moneyTalkComponent extends StatelessWidget {
  const moneyTalkComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          width: MediaQuery.sizeOf(context).width,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.all(width: 1, color: Colors.black.withOpacity(0.20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1, color: Colors.black.withOpacity(0.20))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Earning while Young"),
                        Text("Learn fundamentally the princi...")
                      ],
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_outward))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

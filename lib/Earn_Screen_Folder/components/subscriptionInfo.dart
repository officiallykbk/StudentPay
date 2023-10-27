// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SubscriptionInfo extends StatelessWidget {
  const SubscriptionInfo({Key? key, required this.info, required this.icon})
      : super(key: key);

  final String info;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * 0.08,
      width: width,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFFFAF6D3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFFFFFFF),
                  width: 1,
                ),
              ),
              child: icon,
            ),
            SizedBox(width: 10),
            Flexible(
              child: SizedBox(
                height: 20,
                child: Text(
                  info,
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

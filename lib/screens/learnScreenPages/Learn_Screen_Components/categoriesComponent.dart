import 'package:flutter/material.dart';

class learn_categories_component extends StatefulWidget {
  const learn_categories_component({required this.category, super.key});

  final String category;

  @override
  State<learn_categories_component> createState() =>
      _learn_categories_componentState();
}

class _learn_categories_componentState
    extends State<learn_categories_component> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 90,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(217, 217, 217, 1),
        ),
      ),
      Text(widget.category)
    ]);
  }
}

import 'dart:ui';

class SubscriptionModel {
  final String text;
  final int offer;
  final String textTwo;
  final Color color;

  final String textThree;

  SubscriptionModel(
      {required this.text,
      required this.offer,
      required this.textTwo,
      required this.color,
      this.textThree = 'Offer'});
}

import 'package:students_pay/Earn_Screen_Folder/Option_pages/points_option/bar_graph/individual.dart';

class BarData {
  final double sunamount;
  final double monamount;
  final double tueamount;
  final double wedamount;
  final double thuamount;
  final double friamount;
  final double satamount;

  BarData(
      {required this.sunamount,
      required this.monamount,
      required this.tueamount,
      required this.wedamount,
      required this.thuamount,
      required this.friamount,
      required this.satamount});

  List<IndividualBar> bardata = [];

  //initialize bar data

  void initializeBarData() {
    bardata = [
      IndividualBar(x: 0, y: sunamount),
      IndividualBar(x: 1, y: monamount),
      IndividualBar(x: 2, y: tueamount),
      IndividualBar(x: 3, y: wedamount),
      IndividualBar(x: 4, y: thuamount),
      IndividualBar(x: 5, y: friamount),
      IndividualBar(x: 6, y: satamount),
    ];
  }
}

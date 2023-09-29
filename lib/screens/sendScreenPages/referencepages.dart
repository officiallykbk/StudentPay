import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// THIS SECTION SHOWS THE KEYPAD, WHICH WOULD BE USED TO TYPE AMOUNT
class KeyPad extends StatelessWidget {
  const KeyPad({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, '.', '', 0];
    return Container(
        height: 150,
        width: 300,
        margin: const EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 198, 200, 202),
                    borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                child: Text("${digits[index]}",
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w300)),
              ),
            );
          },
        ));
  }
}

//THIS WOULD BE USED AS A TEMPLATE DIFFERENT TRANSACTION METHODS
class SendMethod extends StatelessWidget {
  final String method;
  final String pngname;

  const SendMethod({super.key, required this.method, required this.pngname});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              width: 0.7, color: const Color.fromRGBO(193, 190, 190, 1)),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: SvgPicture.asset("assets/svgassets/$pngname"),
            ),
            const SizedBox(width: 5),
            Text(method,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 99, 99, 99))),
            const Spacer(),
            SvgPicture.asset("assets/svgassets/diagonalarrow.svg")
          ],
        ));
  }
}

// class QuickSend extends StatelessWidget {
//   final String qname;
//   const QuickSend({super.key, required this.qname});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 44,
//         height: 60,
//         child: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(child: Icon(Icons.person)),
//             Text(qname,
//                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400))
//           ],
//         ));
//   }
// }

// Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CircleAvatar(child: Icon(Icons.person)),
//                           Text("James",
//                               style: TextStyle(
//                                   fontSize: 12, fontWeight: FontWeight.w400))
//                         ],
//                       )



// class LastPage extends StatelessWidget {
//   const LastPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(child: 
//     Container(
//             decoration: BoxDecoration(
//                 border: Border.all(width: 1),
//                 borderRadius: const BorderRadius.all(Radius.circular(20))),
//             width: 350,
//             height: 60,
//             child: const Expanded(
//                 child: Row(
//               children: [
//                 SizedBox(width: 10),
//                 CircleAvatar(child: Icon(Icons.person)),
//                 SizedBox(width: 5),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Barry Allen",
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.w700)),
//                     SizedBox(height: 5),
//                     Text("0205543177",
//                         style: TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.w400))
//                   ],
//                 )
//               ],
//             )),
//           ),
//           Container(
//             width: 350,
//             height: 150,
//             margin: const EdgeInsets.only(left: 25, right: 25),
//             child: const Center(
//               child:
//                   // TO BE REPLACED BY INPUT LISTENER
//                   Text("Wait",
//                       style:
//                           TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
//             ),
//           ),
//           // Keypad session
//           const Expanded(
//             child: KeyPad(),
//           ),

//           Container(
//             height: 50,
//             padding: const EdgeInsets.all(8),
//             width: 350,
//             decoration: const BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.all(Radius.circular(50))),
//             child: const Text("Send",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
//           ));
//   }
// }
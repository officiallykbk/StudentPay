import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// THIS SECTION SHOWS THE KEYPAD, WHICH WOULD BE USED TO TYPE AMOUNT

class KeyPad extends StatelessWidget {
  // final TextEditingController textfield;
  // final Function(String) ontapped;
  const KeyPad({super.key});
  @override
  Widget build(BuildContext context) {
    List<dynamic> digits = [1, 2, 3, 4, 5, 6, 7, 8, 9, '.', 0, ""];
    return Container(
        width: MediaQuery.of(context).size.width - 50,
        margin: const EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 222, 224, 225),
                  borderRadius: BorderRadius.circular(50)),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              child: Text("${digits[index]}",
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w300)),
            );
          },
        ));
  }
}

//THIS WOULD BE USED AS A TEMPLATE DIFFERENT TRANSACTION METHODS
class SendMethod extends StatefulWidget {
  final String method;
  final String pngname;
  final bool selected;

  const SendMethod({
    super.key,
    required this.method,
    required this.pngname,
    required this.selected,
  });

  @override
  State<SendMethod> createState() => _SendMethodState();
}

class _SendMethodState extends State<SendMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52,
        width: MediaQuery.of(context).size.width - 50,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: widget.selected
                    ? const Color.fromARGB(255, 90, 179, 231)
                    : Colors.black.withOpacity(0.20000000298023224),
              ),
              borderRadius: BorderRadius.circular(12)),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: SvgPicture.asset("assets/svgassets/${widget.pngname}"),
            ),
            const SizedBox(width: 5),
            Text(widget.method,
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

// This is for the appbar of the various send screens
class AppTop extends StatelessWidget {
  const AppTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
      centerTitle: true,
    );
  }
}

class Progress extends StatelessWidget {
  final double indicator;
  const Progress({super.key, required this.indicator});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: MediaQuery.of(context).size.width - 50,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: LinearProgressIndicator(
        color: Colors.black,
        backgroundColor: const Color.fromARGB(255, 204, 204, 204),
        value: indicator,
        borderRadius: BorderRadius.circular(25),
      ),
    );
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
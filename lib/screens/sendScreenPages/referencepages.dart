import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// THIS SECTION IS MEANT TO ADJUST THE NUMBER TEXT AREAS
class NumTextfield extends StatefulWidget {
  final TextEditingController varController;
  // SETTING A STOP FOR THE NUMBER OF CHARACTERS ONE CAN ENTER
  final int maxnumber;
  // USED TO PICK THE HINT TEXT OF THE TEXTAREA
  final String purpose;
  const NumTextfield(this.maxnumber,
      {super.key, required this.varController, required this.purpose});

  @override
  State<NumTextfield> createState() => _NumTextfieldState();
}

class _NumTextfieldState extends State<NumTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.20000000298023224),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      height: 30,
      width: MediaQuery.of(context).size.width - 50,
      child: TextFormField(
        controller: widget.varController,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: widget.purpose,
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
      ),
    );
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
  final String name;
  const AppTop({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new)),
      title: Text(name,
          style: const TextStyle(
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
      ),
    );
  }
}

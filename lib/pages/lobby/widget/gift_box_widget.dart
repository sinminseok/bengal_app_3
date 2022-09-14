import 'package:flutter/material.dart';

class GiftBoxWidget extends StatefulWidget {
  const GiftBoxWidget({Key? key}) : super(key: key);

  @override
  GiftBoxWidgetState createState() => GiftBoxWidgetState();
}

class GiftBoxWidgetState extends State<GiftBoxWidget> {

  @override
  Widget build(BuildContext context) {

    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 10, 0, 0),
          child: Image.asset('assets/images/lobby/btn_gift_box1.png',
            width: 78,
            height: 50,
            alignment: Alignment.center,
            fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Image.asset('assets/images/lobby/btn_gift_box2.png',
            width: 78,
            height: 50,
            alignment: Alignment.center,
            fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Image.asset('assets/images/lobby/btn_gift_box_empty.png',
            width: 78,
            height: 50,
            alignment: Alignment.center,
            fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Image.asset('assets/images/lobby/btn_gift_box_empty.png',
            width: 78,
            height: 50,
            alignment: Alignment.center,
            fit: BoxFit.cover,),
        ),

      ]
    );
  }

}

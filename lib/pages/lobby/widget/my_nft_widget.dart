import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNftWidget extends StatefulWidget {
  const MyNftWidget({Key? key}) : super(key: key);

  @override
  MyNftWidgetState createState() => MyNftWidgetState();
}

class MyNftWidgetState extends State<MyNftWidget> {
  var _alignment = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset('assets/images/lobby/btn_buy_car.png',
            width: 360,
            height: 247,
            alignment: Alignment.center,
            fit: BoxFit.fill,),

          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.07,
          //   top: MediaQuery.of(context).size.height * 0.25,
          //   child: Image.asset('assets/images/login/logo_2.png',
          //     fit: BoxFit.cover,),
          // ),
          //
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.07,
          //   top: MediaQuery.of(context).size.height * 0.30,
          //   child: Text(StringConfiguration().getUi(UiStringType.welcome),
          //     style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFC2BAFF),
          //         fontWeight: FontWeight.w400),
          //         fontSize: 14),
          //   ),
          // ),
        ]
    );
  }

}

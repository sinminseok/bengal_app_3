import 'package:flutter/material.dart';
import '../../../types/constants.dart';

Widget Button_Widget(Size size,String title){
  return Container(
    width: size.width * 0.35,
    height: size.height * 0.06,
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurpleAccent.shade100, kPrimaryColor]),

        borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Center(child: Text("$title",style: TextStyle(color: Colors.white),)),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Sent_and_Receive_Widget.dart';

Widget History_listview(Size size){
  return Container(

    width: size.width*0.9,
    height: size.height*0.23,
    //추후 ListView builder로 변경
    child: ListView(
      children: [
        Sent_and_Receive_Widget(size,"Sent","22/9/2023 18:00",10.1,"XPER"),
        Sent_and_Receive_Widget(size,"Received","22/9/2023 18:00",10.1,"XPER"),
        Sent_and_Receive_Widget(size,"Sent","22/9/2023 18:00",10.1,"XPER"),
      ],
    ),
  );
}

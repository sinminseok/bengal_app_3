import 'package:flutter/material.dart';
import '../../../types/constants.dart';

Widget Sent_and_Receive_Widget(Size size,String status,String datetime,double value,String coin_name){
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(

      height: size.height*0.09,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height*0.01,),
                Text("$status"),
                SizedBox(height: size.height*0.01,),
                Text("$datetime",style: TextStyle(color: Colors.grey,fontSize: 11),)
              ],
            ),
          ),
          SizedBox(width: size.width*0.36,),
          status=="Received"?Text("-$value $coin_name",style: TextStyle(color: Colors.red)):Text("+$value $coin_name",style: TextStyle(color: kCharColor),)
        ],
      ),
    ),
  );
}

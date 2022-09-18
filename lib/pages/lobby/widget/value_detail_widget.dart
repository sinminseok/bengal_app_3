

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Value_Detail_Widget(String icon_url,String title,String main_value,String? suv_value,Size size){
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      height: size.height * 0.05,
      width: size.width * 0.385,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset("assets/images/lobby/icons/$icon_url.png",height: size.height*0.036,),
          ),
          Text("$title",style: TextStyle(color: Colors.grey,fontSize: 10),),
          SizedBox(width: size.width*0.04,),
          Text("$main_value",style: TextStyle(fontSize: 10),),
          Text("(+$suv_value)",style: TextStyle(color: Colors.grey,fontSize: 10),)

        ],
      ),
    ),
  );
}

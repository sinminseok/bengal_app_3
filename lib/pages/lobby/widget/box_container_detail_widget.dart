

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BoxContainer_Detail_Widget(Size size,bool isempty,bool ready,bool during,String? during_value){

  return Padding(
    padding: const EdgeInsets.all(2.2),
    child: Container(
        width: size.width*0.2,
        height: size.height*0.12,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            isempty!=true?Container():Image.asset("assets/images/lobby/boxes/empty_box.png",height: size.height*0.06,width: size.width*0.08,),
            ready!=true?Container():Image.asset("assets/images/lobby/boxes/ready_box.png",height: size.height*0.06,width: size.width*0.08,),
            during!=true?Container():Image.asset("assets/images/lobby/boxes/during_box.png",height: size.height*0.06,width: size.width*0.08,),
            isempty!=true?Container():Text("EMPTY",style: TextStyle(color: Colors.grey),),
            ready!=true?Container():Text("READY",style: TextStyle(color: Colors.grey),),
            during!=true?Container():Text("$during_value",style: TextStyle(color: Colors.grey),),
          ],
        )
    ),
  );
}

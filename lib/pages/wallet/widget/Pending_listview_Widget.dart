import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Sent_and_Receive_Widget.dart';

Widget Pending_listview(Size size){
  return Container(
    margin: EdgeInsets.fromLTRB(3.w, 20.h, 5.w, 3.h),
    width: 360.w,
    height: 200.h,
    //추후 ListView builder로 변경
    child: ListView(
      children: [
        Sent_and_Receive_Widget(size,"Sent","22/9/2023 18:00",10.1,"XPER"),
       // Sent_and_Receive_Widget(size,"Received","22/9/2023 18:00",10.1,"XPER")

      ],
    ),
  );
}

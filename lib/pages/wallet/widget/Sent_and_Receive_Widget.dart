import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

Widget Sent_and_Receive_Widget(
    Size size, String status, String datetime, double value, String coin_name) {
  return Container(
    margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

    height: 80.h,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(3.w, 10.h, 15.w, 0.h),
                  child: Text("$status")),
              Container(
                  margin: EdgeInsets.fromLTRB(3.w, 10.h, 15.w, 0.h),
                  child: Text(
                    "$datetime",
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ))
            ],
          ),
        ),
        status == "Received"
            ? Container(
                margin: EdgeInsets.fromLTRB(3.w, 10.h, 15.w, 0.h),
                child: Text("-$value $coin_name",
                    style: TextStyle(color: Colors.red)))
            : Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                child: Text(
                  "+$value $coin_name",
                  style: TextStyle(color: kCharColor),
                ))
      ],
    ),
  );
}

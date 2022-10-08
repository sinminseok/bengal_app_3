import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Coin_Widget(String img_name, String value) {
  return  Container(
    margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),

    child: Row(
      children: [
        Stack(
          children: [
            // Container(
            //   width:20,
            //
            //   margin: EdgeInsets.all(1.0),
            //   decoration: BoxDecoration(
            //
            //       color: Colors.black,
            //       shape: BoxShape.circle
            //   ),
            // ),
            Image.asset(
              "assets/images/lobby/icons/appbar_icons/$img_name.png",
              height: 20.h,
              width: 20.w,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2.w, 0.h, 0.w, 0.h),

          child: Text(
            value,
            style: TextStyle(fontSize: 10.sp, color: Colors.black),
          ),
        )
      ],
    ),
  );
}

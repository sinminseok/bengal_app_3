

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

Widget Status_Widget(String status){
  return Container(
    margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

    width: 360.w,
    height: 60.h,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(15))
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
                width:40.w,
                height: 40.h,
                margin: EdgeInsets.fromLTRB(10.w, 0.h, 5.w, 0.h),
                child: Image.asset("assets/images/game/game_img.png")),
            Text("Game Name",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),)
          ],
        ),
        Container(
          width:60.w,
          height:30.h,
          margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
          decoration: BoxDecoration(

              color: status=="ADD"?kPrimaryColor:Colors.grey.shade400,
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Center(
            child: Text(status=="ADD"?"ADD":"ALREADY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 8.sp),),
          ),

        )
      ],
    ),
  );
}
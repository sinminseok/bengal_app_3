
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

Widget CarBox_Info_Widget(){
  return  Container(
    margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),

    child: Column(
      children: [
        Row(
          children: [

            Container(
              margin: EdgeInsets.fromLTRB(14.w, 0.h, 0.w, 0.h),
              width: 65.w,
              height: 65.h,
              child: Image.asset(
                "assets/images/inventory/car_boxes/box_epic.png",

              ),
            ),

            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(28.w, 0.h, 0.w, 6.h),
                  child: Text("EPIC",style: TextStyle(color: Colors.grey.shade600,fontSize: 10.sp,fontWeight: FontWeight.bold),),
                ),
                Container(
                  width: 70.w,
                  height: 15.h,
                  margin: EdgeInsets.fromLTRB(28.w, 0.h, 0.w, 0.h),

                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey),
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                            30.0) //         <--- border radius here
                    ),
                  ),
                  child: Row(

                    children: [
                      Container(
                        width:
                        11.w,
                        height:
                        11.h,
                        decoration: BoxDecoration(
                            color:
                            kPrimaryColor,
                            shape: BoxShape
                                .circle),
                        child: Row(
                          children: [

                            Container(
                              margin: EdgeInsets.fromLTRB(2.3.w, 0.6.h, 0.w, 0.h),

                              child: Text(
                                "#",
                                style: TextStyle(
                                    color: Colors
                                        .white,fontSize: 7.sp),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(2.4.w, 0.h, 0.w, 0.h),

                        child: Text(
                          "324543478",
                          style: TextStyle(
                              fontSize: 8.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        Container(
          width: 260.w,
          height: 1.h,
          color: Colors.grey.shade300,
        ),

      ],
    ),
  );
}
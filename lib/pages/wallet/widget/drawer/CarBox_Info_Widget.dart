
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

Widget CarBox_Info_Widget(){
  return  Container(
    margin: EdgeInsets.fromLTRB(10.w, 0.h, 15.w, 0.h),

    child: Column(
      children: [
        Row(
          children: [

            Container(
              margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 10.h),
              width: 80.w,
              height: 80.h,
              child: Image.asset(
                "assets/images/inventory/car_boxes/box_epic.png",

              ),
            ),

            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 6.h),
                  child: Text("EPIC"),
                ),
                Container(
                  width: 63.8.w,
                  height: 18.h,
                  margin: EdgeInsets.fromLTRB(0.w, 7.h, 0.w, 20.h),

                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey),
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                            30.0) //         <--- border radius here
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:
                        12.w,
                        height:
                        12.h,
                        decoration: BoxDecoration(
                            color:
                            kPrimaryColor,
                            shape: BoxShape
                                .circle),
                        child: Row(
                          children: [

                            Container(
                              margin: EdgeInsets.fromLTRB(3.2.w, 0.h, 0.w, 0.h),

                              child: Text(
                                "#",
                                style: TextStyle(
                                    color: Colors
                                        .white,fontSize: 9),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(1.w, 1.h, 5.w, 0.h),

                        child: Text(
                          "123151232",
                          style: TextStyle(
                              fontSize: 9),
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
          color: Colors.grey,
        ),

      ],
    ),
  );
}
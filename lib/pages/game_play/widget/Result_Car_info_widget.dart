

import 'package:bengal_app/types/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget Result_Car_info_widget(){
  return Container(
    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 20.h),

    width: 360.w,
    height: 130.h,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.all(Radius.circular(15))
    ),

    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),


          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset("assets/images/common/cars/car1.png",)),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 0.h),

              child: Stack(
                children: [
                  Container(
                    width: 140.w,

                    height:24.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                          Radius.circular(30.0) //         <--- border radius here
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          // margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),

                          width:24.w,
                          height: 17.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade500, shape: BoxShape.circle),
                          child: Row(
                            children: [

                              Container(
                                margin: EdgeInsets.fromLTRB(8.5.w, 1.h, 0.w, 0.h),

                                child: Text(
                                  "#",
                                  style: TextStyle(color: Colors.white,fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Text(
                          "31233312",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      left: 84.w,
                      child: Image.asset("assets/images/lobby/icons/limited_button.png",width: 56.w,))
                ],
              ),
            ),
            Container(
              width: 140.w,
              margin: EdgeInsets.fromLTRB(1.w, 10.h, 15.w, 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(


                    child: Text("Duability",style: TextStyle(color: Colors.teal),)),
                Text("(- 15.0)",style: TextStyle(color: Colors.red),)
              ],),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1.w, 10.h, 3.w, 0.h),


              child: LinearPercentIndicator(
                center: Text(
                  "",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                barRadius: Radius.circular(10),
                width: 170.w,
                lineHeight: 4.h,
                percent: 0.9,
                progressColor: Colors.teal,
              ),
            ),
            Container(

              width: 160.w,
              margin: EdgeInsets.fromLTRB(10.w, 13.h, 15.w, 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/inventory/card_icons/card_car_icon.png",width: 29.w,height: 22.h,color: Colors.teal,),
                      Container(


                          child: Text("50000km",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),)),
                    ],
                  ),

                  Text("(+ 836.0)",style: TextStyle(color: Colors.red),)
                ],),
            ),

          ],
        )
      ],
    ),

  );
}
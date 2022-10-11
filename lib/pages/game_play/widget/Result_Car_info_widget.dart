import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget Result_Car_info_widget(){
  return Container(
    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 20.h),

    width: 360.w,
    height: 117.h,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.all(Radius.circular(15))
    ),

    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20.w, 0.h, 0.w, 0.h),
          width: 150.w,
          height: 86.72.h,


          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                "assets/images/common/cars/car1.png",
                fit: BoxFit.fitWidth,)),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10.w, 21.h, 0.w, 0.h),

              child: Stack(
                children: [
                  Container(
                    width: 140.w,

                    height:20.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                          margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                          width:12.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade500, shape: BoxShape.circle),
                          child: Row(
                            children: [

                              Container(
                                margin: EdgeInsets.fromLTRB(2.8.w, 1.3.h, 0.w, 0.h),

                                child: Text(
                                  "#",
                                  style: TextStyle(color: Colors.white,fontSize: 7),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "31233312",
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: 53.w,height: 16.h,
                      margin: EdgeInsets.fromLTRB(84.w, 2.h, 0.w, 0.h),
                      child: Image.asset("assets/images/lobby/icons/limited_button.png",fit: BoxFit.fill,))
                ],
              ),
            ),
            Container(
              width: 140.w,
              margin: EdgeInsets.fromLTRB(10.w, 10.h, 0.w, 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Duability",style: TextStyle(color: Colors.teal,fontSize: 10),),
                Text("(- 15.0)",style: TextStyle(color: Colors.red,fontSize: 10),)
              ],),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.w, 3.h, 0.w, 0.h),


              child: LinearPercentIndicator(
                center: Text(
                  "",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                barRadius: Radius.circular(10),
                width: 155.w,
                lineHeight: 4.h,
                percent: 0.9,
                progressColor: Colors.teal,
              ),
            ),
            Container(

              width: 140.w,
              margin: EdgeInsets.fromLTRB(10.w, 13.h, 0.w, 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/inventory/card_icons/card_car_icon.png",width: 29.w,height: 12.h,color: Colors.teal,fit: BoxFit.fill,),
                      Container(


                          child: Text("50000km",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 10),)),
                    ],
                  ),

                  Container(


                      child: Text("(+ 836.0)",style: TextStyle(color: Colors.red,fontSize: 10),))
                ],),
            ),

          ],
        )
      ],
    ),

  );
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../types/constants.dart';

class Car_detail_popup {

  void showDialog(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Stack(
            children: [
              Positioned(
                  bottom: 660.h,
                  left: 300.w,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/common/cancel_button.png",
                        width: 40.w,
                      ))),
              Center(
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  child: Container(
                      width: 300.w,
                      height: 503.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(

                        children: [
                          Container(
                              width: 320.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: Colors.grey),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 38,
                                          height: 15,
                                          child: Image.asset("assets/images/game/empty_car/empty_car1.png",color: Colors.white,),
                                        ),
                                        Text("SEDAN ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                                        Text("/ ULTIMATE",style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                                      ],
                                    ),
                                  ),
                                  
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
                                    child: Row(
                                      children: [
                                        Text("Lv 12  ·",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.bold),),
                                        Text("  Mint:9",style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                          Container(
                              width: 300.w,
                              height: 176.46,

                              child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fill,)),

                          Container(
                            width: 170.w,
                            margin: EdgeInsets.fromLTRB(10.w, 7.h, 0.w, 0.h),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(
                                  // margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                                  margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                                  width:16.w,
                                  height: 16.h,
                                  decoration: BoxDecoration(
                                      color: Colors.black, shape: BoxShape.circle),
                                  child:
                                  Container(
                                    margin: EdgeInsets.fromLTRB(4.3.w, 1.3.h, 0.w, 0.h),

                                    child: Text(
                                      "#",
                                      style: TextStyle(color: Colors.white,fontSize: 9.sp),
                                    ),
                                  ),


                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                  child: Text(
                                    "123432578",
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ),
                                Container(
                                    width: 53.w,height: 16.h,
                                    margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                    child: Image.asset("assets/images/lobby/icons/limited_button.png",fit: BoxFit.fill,)),

                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 15.h),

                            width: 230.w,
                            height: 40.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                //Speed Box
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_open.png"),
                                ),
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_lock.png"),
                                ),Container(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_lock.png"),
                                ),
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_lock.png"),
                                )

                                //Luck box

                              ],
                            ),
                          ),

                          Center(
                            child: Container(
                              width: 252.w,
                              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                              child: LinearPercentIndicator(
                                center: Text(
                                  "Durability 45.50%",
                                  style: TextStyle(color: Colors.white, fontSize: 11),
                                ),
                                barRadius: Radius.circular(10),
                                width: 250.w,
                                lineHeight: 15.h,
                                percent: 0.9,
                                progressColor: Colors.teal,
                              ),
                            ),
                          ),
                          Container(
                            width: 250.w,
                            margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LinearPercentIndicator(
                                  barRadius: Radius.circular(10),
                                  width: 145.w,
                                  lineHeight: 10.h,
                                  percent: 0.9,
                                  progressColor: Colors.teal,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
                                  child: Text(
                                    "1333 km (FINE)",
                                    style: TextStyle(color: kCharColor, fontSize: 9.sp,fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 10.h),

                                width: 260.w,
                                height: 70.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //Speed Box
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:10.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/speed_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                              child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                          Text(
                                            "Speed",
                                            style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:10.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/dice_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                              child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                          Text(
                                            "Luck",
                                            style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:10.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/charge_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                              child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                          Text(
                                            "Charge",
                                            style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:10.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/repair_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                              child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                          Text(
                                            "Repair",
                                            style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),

                                    //Luck box

                                  ],
                                ),
                              ),

                              Text("Status",style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.w700),),


                            ],
                          )


                        ],
                      )),
                ),
              )
            ],
          );
        });
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../models/car.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

class Car_detail_popup {

  void showDialog(Size size, BuildContext context, CarNft car) {
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
                  bottom: 680.h,
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
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Container(
                      width: 300.w,
                      height: 540.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(

                        children: [
                          Container(
                              width: 320.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
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
                                        SizedBox(
                                          width: 38,
                                          height: 15,
                                          child: Image.asset("assets/images/game/empty_car/empty_car1.png",color: Colors.white,),
                                        ),
                                        Text(
                                          car.getCarTypeString().toUpperCase(),
                                          style: Font.lato(Colors.white, FontWeight.bold, 12.sp),
                                        ),
                                        Text(
                                          "/ ${car.getCarGradeString().toString()}",
                                          style: Font.lato(Colors.white, FontWeight.bold, 12.sp),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Lv ${car.level}  ·",
                                          style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                        ),
                                        Text(
                                          "  Mint:${car.mintingCount}",
                                          style: Font.lato(Colors.white, FontWeight.w400, 10.sp),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                          SizedBox(
                              width: 300.w,
                              height: 176.46,
                              child: Image.asset(
                                car.getAssetImage(),
                                fit: BoxFit.fill,)),

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
                                  decoration: const BoxDecoration(
                                      color: Colors.black, shape: BoxShape.circle),
                                  child:
                                  Container(
                                    margin: EdgeInsets.fromLTRB(4.3.w, 1.3.h, 0.w, 0.h),

                                    child: Text(
                                      "#",
                                      style: Font.lato(Colors.white, FontWeight.w400, 9.sp),
                                    ),
                                  ),


                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                  child: Text(
                                    "${car.id}",
                                    style: Font.lato(Colors.black, FontWeight.bold, 14.sp),
                                  ),
                                ),
                                Container(
                                    width: 53.w,height: 16.h,
                                    margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                    child: Image.asset("assets/images/lobby/icons/limited_button.png",
                                      fit: BoxFit.fill,)),
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
                                SizedBox(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_open.png"),
                                ),
                                SizedBox(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_lock.png"),
                                ),SizedBox(
                                  width: 40.w,
                                  height: 40.h,
                                  child: Image.asset("assets/images/workshop/onchangebox_lock.png"),
                                ),
                                SizedBox(
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
                                  "Durability ${car.durability}%",
                                  style: Font.lato(Colors.white, FontWeight.w400, 9.sp),
                                ),
                                barRadius: const Radius.circular(10),
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
                                  barRadius: const Radius.circular(10),
                                  width: 145.w,
                                  lineHeight: 10.h,
                                  percent: 0.9,
                                  progressColor: Colors.teal,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),
                                  child: Text(
                                    "${car.driven} km (FINE)",
                                    style: Font.lato(kCharColor, FontWeight.bold, 9.sp),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                                child: Text(
                                  "Status",
                                  style: Font.lato(Colors.grey.shade600, FontWeight.bold, 16.sp),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                                width: 260.w,
                                height: 80.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //Speed Box
                                    Container(
                                      width: 55.w,
                                      //height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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

                                              child: Text(
                                                "${car.speed}",
                                                style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),
                                              )),
                                          Text(
                                            "Speed",
                                            style: Font.lato(const Color(0xFFBAB8C4), FontWeight.bold, 10.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 55.w,
                                      //height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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

                                              child: Text(
                                                "${car.lucky}",
                                                style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),
                                              )),
                                          Text(
                                            "Luck",
                                            style: Font.lato(const Color(0xFFBAB8C4), FontWeight.bold, 10.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 55.w,
                                      //height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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

                                              child: Text(
                                                "${car.charge}",
                                                style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),
                                              )),
                                          Text(
                                            "Charge",
                                            style: Font.lato(const Color(0xFFBAB8C4), FontWeight.bold, 10.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 55.w,
                                      //height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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

                                              child: Text(
                                                "${car.repair}",
                                                style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),
                                              )),
                                          Text(
                                            "Repair",
                                            style: Font.lato(const Color(0xFFBAB8C4), FontWeight.bold, 10.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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

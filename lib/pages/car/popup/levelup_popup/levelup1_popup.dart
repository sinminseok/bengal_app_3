import 'dart:ui';

import 'package:bengal_app/pages/car/popup/levelup_popup/levelup2_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../types/constants.dart';

class Levelup1_popup {

  void Levelup_popup(BuildContext context) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: 640.h,
                      left: 265.w,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 640.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                                  "LEVEL UP",
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                                )),
                          ),
                          Container(
                            width: 300.w,
                            height: 180.h,
                            child: Image.asset(
                              "assets/images/common/cars/car1.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16),
                                  )),
                              Container(
                                  margin:
                                  EdgeInsets.fromLTRB(3.w, 10.h, 3.w, 0.h),
                                  child: Image.asset(
                                    "assets/images/common/play_button.png",
                                    width: 20.w,
                                    height: 20.h,
                                  )),
                              Container(
                                  margin:
                                  EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 0.h),
                                  child: Text(
                                    "Lv 4",
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 16),
                                  )),
                            ],
                          ),
                          Center(
                            child: Text(
                              "Time taken 6h 55m",
                              style:
                              TextStyle(color: kPrimaryColor, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.fromLTRB(15.w, 13.h, 170.w, 10.h),
                            child: Text(
                              "Level up Cost",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 15),
                            ),
                          ),
                          Container(
                            width: 260.w,
                            height: 110.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text("XPER")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text("20.0"))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/per_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text("PER")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text("20.0"))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                          Text("XPER")
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text("20.0"))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.fromLTRB(15.w, 30.h, 170.w, 10.h),
                            child: Text(
                              "Level 5 Unlock",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 15),
                            ),
                          ),
                          Container(
                            width: 260.w,
                            height: 80.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          "Acquire status",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 15),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        width: 32.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple.shade50,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                            child: Text(
                                              "+4",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 10),
                                            )))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          "1st Gem scoket",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 15),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 15.w, 0.h),
                                        width: 48.w,
                                        height: 20.h,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple.shade50,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: Center(
                                            child: Text(
                                              "OPEN",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            )))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Levelup2_popup().levelup2_popup(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                              EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )),
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }

}

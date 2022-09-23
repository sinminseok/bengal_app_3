import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../types/constants.dart';

class Levelup3_popup {

  void levelup3_popup(BuildContext context) {
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
                      bottom: 420.h,
                      left: 265.w,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 420.h,
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
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cost",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 14),
                                ),
                                Text(
                                  "Needed for next level",
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                            width: 260.w,
                            height: 47.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.w, 3.h, 15.w, 0.h),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                        ),
                                        Text(
                                          "XPER",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 12),
                                        )
                                      ],
                                    )),
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                                  child: Text("20.0",style: TextStyle(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                              EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 1.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Boost",
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
      animationType: DialogTransitionType.fade,
    );
  }
}

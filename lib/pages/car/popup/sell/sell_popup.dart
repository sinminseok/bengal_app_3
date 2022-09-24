import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../types/constants.dart';

class Sell_popup {


  void sell_popup(BuildContext context) {
    double _value = 0.5;
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: DefaultTextStyle(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          bottom: 400.h,
                          left: 265.w,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                "assets/images/common/cancel_button.png",
                                width: 40.w,
                              ))),
                      Container(
                          width: 300.w,
                          height: 400.h,
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
                                      "SELL",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
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
                                    margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                    child: Image.asset(
                                      "assets/images/lobby/icons/circle_icon.png",
                                      width: 16.w,
                                      height: 16.h,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "13123",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/lobby/icons/limited_button.png",
                                      width: 57.w,
                                      height: 18.h,
                                    ),
                                  ),
                                ],
                              ),


                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          20.w, 0.h, 10.w, 0.h),
                                      child: Text(
                                        "Price",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600,
                                            fontSize: 14),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 10.w, 0.h),
                                      child: Text(
                                        "",
                                        style: TextStyle(
                                            color: kPrimaryColor, fontSize: 10),
                                      )),
                                ],
                              ),
                              Container(
                                width: 260.w,
                                height: 46.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                child:  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        3.w, 0.h, 15.w, 0.h),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: new InputDecoration(

                                          border: InputBorder.none,
                                          hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 10),
                                          focusedBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 5, bottom: 15, top: 0, right: 5),
                                          hintText: 'Please enter the seling price'
                                      ),
                                    )
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 120.w,
                                  height: 34.h,
                                  margin: EdgeInsets.fromLTRB(
                                      15.w, 13.h, 15.w, 0.h),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
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
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }
}

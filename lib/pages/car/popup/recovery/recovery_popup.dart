import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../models/car.dart';
import '../../../../types/constants.dart';

class Recovery_popup {
  void recovery_popup(BuildContext context, CarNft car) {
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
                          bottom: 478.h,
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
                          height: 570.h,
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
                                  "RECOVERY",
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
                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                      15.w, 10.h, 210.w, 0.h),
                                  child: Text(
                                    "Mileage",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 14),
                                  )),
                              Container(
                                width: 260.w,
                                height: 44.h,
                                margin: EdgeInsets.fromLTRB(15.w, 10.h, 10.w, 0.h),

                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            3.w, 3.h, 3.w, 0.h),
                                        child: Text(
                                          "129500km",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 16),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            4.w, 3.h, 4.w, 0.h),
                                        child: Icon(Icons.play_circle,color: Colors.grey,)),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            3.w, 3.h, 3.w, 0.h),
                                        child: Text(
                                          "129500km",
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 16),
                                        )),
                                  ],
                                ),
                              ),

                              Container( width: 260.w,
                                height: 44.h,
                              child: Row(
                                children: [
                                  Container(
                                      width:22.h,
                                      height: 22.h,
                                      margin: EdgeInsets.fromLTRB(10.w, 10.h, 3.w, 0.h),

                                      child: Image.asset("assets/images/common/cars/icons/yellow_scroll_icon.png")),

                                  Container(
                                      margin: EdgeInsets.fromLTRB(3.w, 10.h, 3.w, 0.h),

                                      child: Text("Use Lv1 Recovery Scroll",style: TextStyle(color: Colors.grey.shade500,fontSize: 12,fontWeight: FontWeight.bold),)),

                                  Container(
                                    margin: EdgeInsets.fromLTRB(10.w, 10.h, 3.w, 0.h),

                                    width: 80.w,
                                    height: 22.h,
                                    decoration: BoxDecoration(

                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                    child: Center(
                                      child: Text("Do not own",style: TextStyle(color: Colors.grey.shade600,fontSize: 10),),
                                    ),
                                  )
                                ],
                              ),
                              ),

                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    thumbShape: RoundSliderThumbShape()),
                                child: Slider(

                                  activeColor: kPrimaryColor,
                                  inactiveColor: Colors.grey.shade300,
                                  thumbColor: Colors.grey.shade300,
                                  value: _value,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _value = newValue;
                                    });
                                  },
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          20.w, 0.h, 10.w, 0.h),
                                      child: Text(
                                        "Extra Cost",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade700,
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
                                margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10.w, 0.h, 15.w, 0.h),
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
                                                color: Colors.grey.shade400,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0.w, 0.h, 10.w, 0.h),
                                      child: Text(
                                        "00.0",
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
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
                                  margin: EdgeInsets.fromLTRB(
                                      15.w, 30.h, 15.w, 0.h),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Center(
                                    child: Text(
                                      "Recovery",
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

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../models/car.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import 'levelup3_popup.dart';

class Levelup2_popup {

  void levelup2_popup(BuildContext context, CarNft car) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: 478.h,
                      left: 265.w,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 480.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                                  "LEVEL UP",
                                  style: Font.lato(Colors.white, FontWeight.bold, 18.sp),
                                )),
                          ),
                          SizedBox(
                            width: 300.w,
                            height: 180.h,
                            child: Image.asset(
                              car.getAssetImage(),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                  EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),
                                  child: Text(
                                    "Lv ${car.level}",
                                    style: Font.lato(Colors.grey.shade600, FontWeight.w400, 16.sp),
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
                                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 0.h),
                                  child: Text(
                                    "Lv ${car.level+1}",
                                    style: Font.lato(kPrimaryColor, FontWeight.bold, 16.sp),
                                  )),
                            ],
                          ),
                          Container(
                              margin:
                              EdgeInsets.fromLTRB(15.w, 10.h, 200.w, 0.h),
                              child: Text(
                                "Leveling",
                                style: Font.lato(Colors.grey.shade700, FontWeight.w400, 16.sp),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.w, 10.h, 15.w, 0.h),
                            child: Center(
                              child: LinearPercentIndicator(
                                //추후 퍼센트 데이터 가져오면 넣어줄 것
                                center: Text("${car.levelUpPercent()}%",
                                    style: Font.lato(Colors.white, FontWeight.w400, 13.sp),
                                ),
                                barRadius: const Radius.circular(10),
                                width: 260.w,
                                lineHeight: 20.h,
                                percent: car.levelUpPercent() / 100.toDouble(),
                                progressColor: kPrimaryColor,
                                padding: const EdgeInsets.only(top: 0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                            child: Text(
                              "Remaining Time",
                              style: Font.lato(Colors.grey.shade600, FontWeight.w400, 12.sp),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                            child: Text(
                              car.getLevelUpRemainString(),
                              style: Font.lato(kPrimaryColor, FontWeight.bold, 20.sp),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Levelup3_popup().levelup3_popup(context, car);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                              EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),
                              decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Boost",
                                  style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
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

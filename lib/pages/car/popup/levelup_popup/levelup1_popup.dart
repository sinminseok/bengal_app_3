import 'dart:ui';

import 'package:bengal_app/controller/storage_controller.dart';
import 'package:bengal_app/models/car.dart';
import 'package:bengal_app/pages/car/popup/levelup_popup/levelup2_popup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../types/constants.dart';
import '../../../../utils/font.dart';

class Levelup1_popup {

  void Levelup_popup(BuildContext context, CarNft car) {
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
                      bottom: 460.h,
                      left: 265.w,
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/images/common/cancel_button.png",width: 40.w,))),

                  Container(
                      width: 300.w,
                      height: 445.h,
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
                          Container(
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
                                  EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0.h),
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
                          Center(
                            child: Text(
                              "Time taken ${car.getLevelUpDurationString()}",
                              style: Font.lato(kPrimaryColor, FontWeight.w400, 14.sp),
                            ),
                          ),
                          Container(
                            margin:
                            EdgeInsets.fromLTRB(15.w, 13.h, 170.w, 10.h),
                            child: Text(
                              "Level up Cost",
                              style: Font.lato(Colors.grey.shade500, FontWeight.w400, 15.sp),
                            ),
                          ),
                          Container(
                            width: 260.w,
                            height: 46.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                            fit: BoxFit.fill,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5.w),
                                            child: Text(
                                              "XPER",
                                              style: Font.lato(Colors.grey.shade600, FontWeight.w400, 12.sp),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          "${car.levelUpCost()}",
                                          style: Font.lato(Colors.grey.shade600, FontWeight.w400, 12.sp),
                                        ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              StorageController().startLevelUp(car);
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                              EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                              decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Confirm",
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
      animationType: DialogTransitionType.slideFromBottom,
    );
  }

}

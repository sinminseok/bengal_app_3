import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../controller/storage_controller.dart';
import '../../../../models/car.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';

class Levelup3_popup {

  void levelup3_popup(BuildContext context, CarNft car) {
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
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                                  "LEVEL UP BOOST",
                                  style: Font.lato(Colors.white, FontWeight.bold, 18.sp),
                                )),
                          ),
                          SizedBox(
                            width: 300.w,
                            height: 180.h,
                            child: Image.asset(
                              car.getAssetImage(),
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
                                  margin:
                                  EdgeInsets.fromLTRB(0.w, 10.h, 15.w, 0.h),
                                  child: Text(
                                    "Lv ${car.level+1}",
                                    style: Font.lato(kPrimaryColor, FontWeight.bold, 16.sp),
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
                                  style: Font.lato(kPrimaryColor, FontWeight.w400, 10.sp),
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
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: EdgeInsets.fromLTRB(10.w, 3.h, 15.w, 0.h),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            "XPER",
                                            style: Font.lato(Colors.grey.shade600, FontWeight.w400, 12.sp),
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                  margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),
                                  child: Text(
                                    "${car.levelUpBoostCost()}",
                                    style: Font.lato(Colors.grey.shade600, FontWeight.bold, 12.sp),
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              StorageController().levelUpBoost(car);
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                              EdgeInsets.fromLTRB(1.w, 20.h, 15.w, 1.h),
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

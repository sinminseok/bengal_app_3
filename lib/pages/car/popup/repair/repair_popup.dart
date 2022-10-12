import 'dart:ui';

import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../models/car.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';

class Repair_popup {
  void repair_popup(BuildContext context, CarNft car) {

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
                  borderRadius: BorderRadius.circular(15.1)),
              content: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
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
                          height: 470.h,
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
                                  "REPAIR",
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
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 0.w, 0.h),
                                      child: Text(
                                        "Durability",
                                        style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 0.w, 0.h),
                                      child: Text(
                                        "${car.durability}/${StorageController().commonData.initialInfo.carMaxDurability}",
                                        style: Font.lato(Colors.grey.shade600, FontWeight.bold, 14.sp),
                                      )),
                                ],
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    thumbShape: const RoundSliderThumbShape()),
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
                                        "Cost",
                                        style: Font.lato(Colors.grey.shade700, FontWeight.bold, 14.sp),
                                      )),
                                  Container(
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 10.h, 10.w, 0.h),
                                      child: Text(
                                        "",
                                        style: Font.lato(kPrimaryColor, FontWeight.w400, 10.sp),
                                      )),
                                ],
                              ),
                              Container(
                                width: 260.w,
                                height: 46.h,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                        color: Colors.grey.shade200)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              3.w, 0.h, 2.w, 0.h),
                                          child: Image.asset(
                                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                                            width: 20.w,
                                            height: 20.h,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 5.w),
                                          child: Text(
                                            "XPER",
                                            style: Font.lato(Colors.grey.shade400, FontWeight.bold, 10.sp),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                      child: Text(
                                          "${car.repairCost()}",//"Move the slide to set the target Durability",
                                        style: Font.lato(Colors.grey.shade400, FontWeight.w400, 8.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  StorageController().repair(car);
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 120.w,
                                  height: 34.h,
                                  margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),
                                  decoration: const BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Center(
                                    child: Text(
                                      "Repair",
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
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }
}

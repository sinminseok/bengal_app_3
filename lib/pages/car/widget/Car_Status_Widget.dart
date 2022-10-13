import 'package:bengal_app/models/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/font.dart';
import '../../../types/constants.dart';

Widget Car_Status_Widget(Size size,CarNft car, bool isCurrently){
  return SizedBox(
    width: 390.w,
    height: 80.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Speed Box
        Container(
          width: 75.w,
          height: 80.h,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: EMPTY_F9F9F9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/speed_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.speed : car.speedBase}",
                style: Font.lato(TXT_SUB_746F7B, FontWeight.bold, 16.sp),
              ),
              Text(
                "Speed",
                style: Font.lato(Disabled_BAB8C4, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
        Container(
          width: 75.w,
          height: 80.h,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: EMPTY_F9F9F9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/dice_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.lucky : car.luckyBase}",
                style: Font.lato(TXT_SUB_746F7B, FontWeight.bold, 16.sp),
              ),
              Text(
                "Luck",
                style: Font.lato(Disabled_BAB8C4, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
        Container(
          width: 75.w,
          height: 80.h,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: EMPTY_F9F9F9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/charge_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.charge : car.chargeBase}",
                style: Font.lato(TXT_SUB_746F7B, FontWeight.bold, 16.sp),
              ),
              Text(
                "Charge",
                style: Font.lato(Disabled_BAB8C4, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
        Container(
          width: 75.w,
          height: 80.h,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: EMPTY_F9F9F9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/repair_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.repair : car.repairBase}",
                style: Font.lato(TXT_SUB_746F7B, FontWeight.bold, 16.sp),
              ),
              Text(
                "Repair",
                style: Font.lato(Disabled_BAB8C4, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
      ],
    ),
  );

}

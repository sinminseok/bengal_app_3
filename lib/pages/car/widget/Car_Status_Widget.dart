import 'package:bengal_app/models/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/font.dart';

Widget Car_Status_Widget(Size size,CarNft car, bool isCurrently){
  return Container(
    margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),

    width: 390.w,
    height: 80.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //Speed Box
        Container(
          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/speed_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.speed : car.speedBase}",
                style: Font.lato(Colors.black, FontWeight.bold, 16.sp),
              ),
              Text(
                "Speed",
                style: Font.lato(Colors.grey, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
        Container(
          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/dice_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.lucky : car.luckyBase}",
                style: Font.lato(Colors.black, FontWeight.bold, 16.sp),
              ),
              Text(
                "Luck",
                style: Font.lato(Colors.grey, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
        Container(
          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/charge_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.charge : car.chargeBase}",
                style: Font.lato(Colors.black, FontWeight.bold, 16.sp),
              ),
              Text(
                "Charge",
                style: Font.lato(Colors.grey, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
        Container(

          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/repair_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text(
                "${isCurrently ? car.repair : car.repairBase}",
                style: Font.lato(Colors.black, FontWeight.bold, 16.sp),
              ),
              Text(
                "Repair",
                style: Font.lato(Colors.grey, FontWeight.w400, 10.sp),
              )
            ],
          ),
        ),
      ],
    ),
  );

}

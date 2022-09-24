import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/car.dart';

Widget Car_Status_Widget2(Size size, CarNft carNft) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 330.w,
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Speed Box
          Container(
            width: 75.w,
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6.h),
                  child: Image.asset(
                    "assets/images/common/cars/icons/speed_icon.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                Text(
                  "${carNft.speed}",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "Speed",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            width: 75.w,
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6.h),
                  child: Image.asset(
                    "assets/images/common/cars/icons/dice_icon.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                Text(
                  "${carNft.lucky}",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "Luck",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            width: 75.w,
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6.h),
                  child: Image.asset(
                    "assets/images/common/cars/icons/charge_icon.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                Text(
                  "${carNft.charge}",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "Charge",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            width: 75.w,
            height: 80.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.shade200),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 6.h),
                  child: Image.asset(
                    "assets/images/common/cars/icons/repair_icon.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                Text(
                  "${carNft.repair}",
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  "Repair",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            ),
          ),
          //Luck box
        ],
      ),
    ),
  );
}

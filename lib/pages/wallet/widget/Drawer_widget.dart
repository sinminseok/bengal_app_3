import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';

Widget Drawer_Coin_Widet(Size size,int xper_value,int per_value,int hvh_value){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 70.h,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                    width: size.width * 0.07,
                  ),
                ),
                Text(
                  "XPER",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Text(
                  "$xper_value",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 70.h,
            decoration: BoxDecoration(
                border: Border.all(color: kPerColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    "assets/images/lobby/icons/appbar_icons/per_icon.png",
                    width: size.width * 0.07,
                  ),
                ),
                Text(
                  "PER",
                  style: TextStyle(
                      color: kPerColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Text(
                  "$per_value",
                  style: TextStyle(
                      color: kPerColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Container(
            width: 290.w,
            height: 70.h,
            decoration: BoxDecoration(
                border: Border.all(color: kCharColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                    width: size.width * 0.07,
                  ),
                ),
                Text(
                  "HVH",
                  style: TextStyle(
                      color: kCharColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                Text(
                  "$hvh_value",
                  style: TextStyle(
                      color: kCharColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
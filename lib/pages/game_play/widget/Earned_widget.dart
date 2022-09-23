
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';

Widget Earned_Widget(double xper_value,double per_value,int special_box_lv,String special_box_value){
  return  Container(
    width: 319.w,
    height: 160.h,
    decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Column(

      children: [
        //xper
        Container(
          margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          15.w, 10.h, 0.w, 0.h),
                      child: Image.asset(
                        "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                        width: 30.w,
                        height: 30.h,
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          10.w, 10.h, 15.w, 0.h),
                      child: Text(
                        "XPER",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Container(
                margin:
                EdgeInsets.fromLTRB(15.w, 10.h, 30.w, 0.h),
                child: Text(
                  "$xper_value",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        //per
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(
                        15.w, 10.h, 0.w, 0.h),
                    child: Image.asset(
                      "assets/images/lobby/icons/appbar_icons/per_icon.png",
                      width: 30.w,
                      height: 30.h,
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        10.w, 10.h, 15.w, 0.h),
                    child: Text(
                      "PER",
                      style: TextStyle(
                          color: kPerColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Container(
              margin:
              EdgeInsets.fromLTRB(15.w, 10.h, 30.w, 0.h),
              child: Text(
                "$per_value",
                style: TextStyle(
                    fontSize: 18,
                    color: kPerColor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        //special box
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(
                        15.w, 10.h, 0.w, 0.h),
                    child: Image.asset(
                      "assets/images/game/special_box.png",
                      width: 30.w,
                      height: 30.h,
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        10.w, 10.h, 15.w, 0.h),
                    child: Text(
                      "Lv $special_box_lv Special Box",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Container(
              margin:
              EdgeInsets.fromLTRB(15.w, 10.h, 30.w, 0.h),
              child: Text(
                "$special_box_value",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
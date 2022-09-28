import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

Widget Game_Special_Container() {
  return Container(
    margin: EdgeInsets.fromLTRB(0.w, 21.h, 0.w, 0.h),
    width: 360.w,
    height: 200.h,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 8.h),
              width: 70.w,
              height: 70.h,
              child: Image.asset(
                "assets/images/game/game_img.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 8.h),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Game name",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "Until datetime",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 3.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: 16.w,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "+0.03 XPER For 1 Power",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 12.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: 16.w,
                        ),
                        Text(
                          " +0.03 PER For 1 Power",
                          style: TextStyle(color: kPerColor, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 8.h),
          width: 330.w,
          height: 1.h,
          color: Colors.grey.shade300,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),

          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 0.w, 0.h),
                      width: 93.w,
                      height: 18.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text(
                        "Normal  lv10",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/game/icons/car1.png",
                            width: 23.w,
                          ),
                          Image.asset(
                            "assets/images/game/icons/car2.png",
                            width: 23.w,
                          ),
                          Image.asset(
                            "assets/images/game/icons/car3.png",
                            width: 23.w,
                          ),
                          Image.asset(
                            "assets/images/game/icons/car4.png",
                            width: 23.w,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.w, 7.h, 0.w, 0.h),
                width: 360.w,
                height: 46.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.grey.shade300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 0.w, 0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mine",
                            style: TextStyle(color: Colors.grey.shade600,fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(Max 1.0 Per / 1Day)",
                            style: TextStyle(
                                fontSize: 10, color: kPerColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 15.w, 0.h),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(1.w, 3.h, 10.w, 0.h),
                            child: Image.asset(
                              "assets/images/lobby/icons/appbar_icons/per_icon.png",
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                          Text(
                            "999,1010 Per",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

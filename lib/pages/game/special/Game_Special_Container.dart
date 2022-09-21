import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

Widget Game_Special_Container(Size size) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      width: size.width * 0.9,
      height: 200.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/game/game_img.png",
                width: 70.w,
                height: 70.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jewel Match",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 6.h, 45.w, 0.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: size.width * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "+0.03 XPER For 1 Power",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 6.h, 45.w, 4.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: size.width * 0.05,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "+0.03 PER For 1 Power",
                            style: TextStyle(color: kPerColor, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 60.h),
                child: Text(
                  "Until datetime",
                  style: TextStyle(color: kPrimaryColor, fontSize: 13),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              children: [
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1.w, 7.h, 15.w, 7.h),
                        width: size.width * 0.25,
                        height: 34.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                              "Normal  lv10",
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 3.h, 3.w, 0.h),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/game/icons/car1.png",
                              width: size.width * 0.08,
                            ),
                            Image.asset(
                              "assets/images/game/icons/car2.png",
                              width: size.width * 0.08,
                            ),
                            Image.asset(
                              "assets/images/game/icons/car3.png",
                              width: size.width * 0.08,
                            ),
                            Image.asset(
                              "assets/images/game/icons/car4.png",
                              width: size.width * 0.08,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.9,
                  height: 46.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.grey.shade300),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(15.w, 3.h, 76.w, 0.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mine",
                              style: TextStyle(color: Colors.grey.shade800),
                            ),
                            Text(
                              "(Max 1.0 Per / 1Day)",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade800),
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/lobby/icons/appbar_icons/per_icon.png",
                        width: 20.w,
                        height: 20.h,
                      ),
                      Text(
                        "999,1010 Per",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    ),
  );
}

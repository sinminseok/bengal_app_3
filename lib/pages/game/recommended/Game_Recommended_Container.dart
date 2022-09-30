import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/game.dart';
import '../../../utils/font.dart';

Widget Game_Recommended_Container(GameInfo game) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      width: 360.w,
      height: 100.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [

          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 15.h, 0.w, 0.h),

                child: Image.asset(
                  "assets/images/game/game_img.png",
                  width: 70.w,
                  height: 70.h,
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(10.w, 15.h, 0.w, 0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(


                      child: Text(
                        game.titleString(),
                        style: Font.lato(const Color(0xFF342B35), FontWeight.bold, 18.sp),
                      ),
                    ),
                    Container(

                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                            width: 16.w,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3.88.w, 3.h, 0.w, 0.h),

                            child: Text(
                              game.xPerPerPowerString(),
                              style: Font.lato(const Color(0xFF8E8E8E), FontWeight.bold, 12.sp),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(

                      width: 250.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(1.w, 5.h, 0.w, 0.h),

                            width: 93.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Center(
                                child: Text(
                                  game.categoryNCarLevelString(),
                                  style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                                )),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(1.w, 5.h, 0.w, 0.h),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/game/icons/car1.png",
                                  color: game.carColorToType(1),
                                  width: 25.w,
                                  height: 15.h,
                                ),
                                Image.asset(
                                  "assets/images/game/icons/car2.png",
                                  color: game.carColorToType(2),
                                  width: 25.w,
                                  height: 15.h,
                                ),
                                Image.asset(
                                  "assets/images/game/icons/car3.png",
                                  color: game.carColorToType(3),
                                  width: 25.w,
                                  height: 15.h,
                                ),
                                Image.asset(
                                  "assets/images/game/icons/car4.png",
                                  color: game.carColorToType(4),
                                  width: 25.w,
                                  height: 15.h,
                                )
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
        ],
      ),
    ),
  );
}

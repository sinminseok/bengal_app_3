

import 'package:bengal_app/pages/car/Car_Detail_FrameView2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../models/car.dart';
import '../../../utils/font.dart';

Widget Car_Maindetail_Widget(BuildContext context, CarNft carNft){
  return InkWell(
    onTap: (){
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: Car_Detail_FrameView2(carNft: carNft, carBuy: false,

              )));
    },
    child: Stack(
      children: [
        Image.asset(
          "assets/images/common/cars/car1.png",
          width: 390.w,
          height: 225.33.h,
          fit: BoxFit.fill,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.w, 200.h, 0.w, 0.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200.w,
                  height: 18.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(14.w, 200.h, 0.w, 0.h),
                  width: 200.w,
                  height: 18.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //color: Colors.white,
                        margin: EdgeInsets.fromLTRB(7.w, 0.h, 0.w, 0.h),
                        child: Text(
                          "Lv ${carNft.level}",
                          style: Font.lato(const Color(0xFF342B35),
                              FontWeight.bold, 12.sp),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/lobby/icons/circle_icon.png",
                            width: 12.w,
                            height: 12.h,
                          ),
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                            child: Text(
                              "${carNft.id}",
                              style: Font.lato(const Color(0xFF342B35),
                                  FontWeight.bold, 12.sp),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/lobby/icons/limited_button.png",
                        width: 57.w,
                        height: 18.h,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.w, 236.h, 0.w, 0.h),
            width: 330.w,
            //height: 15.h,
            child: Column(
              children: [
                LinearPercentIndicator(
                  center: Text(
                    "Durability 45.50%",
                    style: Font.lato(
                        const Color(0xFF746F7B), FontWeight.w400, 9.sp),
                  ),
                  barRadius: const Radius.circular(10),
                  width: 330.w,
                  lineHeight: 15.h,
                  percent: 0.5,
                  backgroundColor: Colors.grey.shade200,

                  progressColor: const Color(0xFFF4C84D),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LinearPercentIndicator(
                      barRadius: const Radius.circular(10),
                      width: 239.w,
                      lineHeight: 4.h,
                      percent: 0.7,
                      backgroundColor: Colors.grey.shade200,
                      progressColor: const Color(0xFFF4C84D),
                    ),
                    Text(
                      "1000 km(Fine)",
                      style: Font.lato(const Color(0xFFF4C84D),
                          FontWeight.w700, 9.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ],
    ),
  );
}

import 'package:bengal_app/pages/car/Car_Detail_FrameView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../models/car.dart';
import '../../../../utils/font.dart';
import '../../../car/Car_Detail_FrameView2.dart';

Widget Inventory_Car_Card2(
    Size size,
    Color color,
    BuildContext context,
    CarNft carNft) {
  return InkWell(
    onTap: () {},
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: Car_Detail_FrameView2(
                      carNft: carNft,
                      carBuy: false,
                    )));
          },
          child: Container(
            width: 170.w,
            height: 310.h,
            decoration: BoxDecoration(
              border: Border.all(color: color),
              borderRadius: BorderRadius.all(
                  Radius.circular(6.0) //         <--- border radius here
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(110.w, 10.h, 15.w, 10.h),
                  child: Text(
                    "Mint: ${carNft.mintingCount}",
                    style: Font.lato(Colors.white, FontWeight.w400, 10.sp),
                  ),
                ),
                //car img
                Image.asset(
                  "assets/images/common/cars/car1.png",
                  width: 150.w,
                ),
                //nftID
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                  width: 86.w,
                  height: 23.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30.0) //         <--- border radius here
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 15.w,
                        height: 15.h,
                        margin: EdgeInsets.fromLTRB(1.w, 1.h, 7.w, 1.h),

                        decoration: BoxDecoration(
                            color: color, shape: BoxShape.circle),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4.w, 0.h, 1.w, 2.h),

                          child: Text(
                            "#",
                            style: Font.lato(Colors.white, FontWeight.w400, 1.sp),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3.w, 2.h, 2.w, 0.h),
                        child: Text(
                          "${carNft.id}",
                          style: Font.lato(const Color(0xFF9196A5), FontWeight.bold, 10.sp),
                        ),
                      )
                    ],
                  ),
                ),
                //Level
                Container(
                  margin: EdgeInsets.fromLTRB(63.w, 3.h, 3.w, 3.h),
                  child: Row(
                    children: [
                      Text(
                        "Level",
                        style: Font.lato(const Color(0xFF746F7B), FontWeight.w400, 10.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, bottom: 6),
                        child: Text(
                          "${carNft.level}",
                          style: Font.lato(const Color(0xFF342B35), FontWeight.bold, 14.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(8.w, 1.h, 10.w, 5.h),

                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon2.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${carNft.speed}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon3.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${carNft.lucky}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon4.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${carNft.charge}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/inventory/card_icons/card_icon1.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          Text(
                            "${carNft.repair}",
                            style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 5.h),
                  child: LinearPercentIndicator(
                    barRadius: Radius.circular(10),
                    width: 140.w,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.green.shade400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        "assets/images/inventory/card_icons/card_car_icon.png",
                        width: 24.w,
                        height: 13.h,
                      ),
                    ),
                    Text(
                      "${carNft.driven} km(Fine)",
                      style: Font.lato(const Color(0xFF15BEA0), FontWeight.bold, 10.sp),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 110.w,
          child: Image.asset(
            "assets/images/common/tags/tag_${carNft.getCarGradeString()}.png",
            fit: BoxFit.fill,
            width: 65.w,
          ),
        ),
        Positioned(
            right: 140.w,
            top: 6.h,
            child: Text(
              carNft.getCarTypeString().toUpperCase(),
              style: Font.lato(Colors.white, FontWeight.bold, 8.sp),
            )),
      ],
    ),
  );
}

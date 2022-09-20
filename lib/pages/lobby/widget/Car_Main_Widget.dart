import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:page_transition/page_transition.dart';
import '../../../utils/font.dart';
import '../../car/Car_Detail_FrameView.dart';

Widget Car_Main_Widget(BuildContext context, Size size, int level, int nft_id,
    double Durability, int distance, String distance_status) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade, child: Car_Detail_FrameView()));
    },
    child: Container(
      //margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
      width: size.width,
      height: 277.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [],
      ),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/common/cars/car1.png",
            width: size.width,
            height: 225.33.h,
            fit: BoxFit.fill,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 200.h, 0.w, 0.h),
              width: 200.w,
              height: 18.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      "Lv $level",
                      style: Font.lato(
                          const Color(0xFF342B35), FontWeight.bold, 12.sp),
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
                        padding: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                        child: Text(
                          "$nft_id",
                          style: Font.lato(
                              const Color(0xFF342B35), FontWeight.bold, 12.sp),
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
                        progressColor: const Color(0xFFF4C84D),
                      ),
                      Text(
                        "$distance km($distance_status)",
                        style: Font.lato(
                            const Color(0xFFF4C84D), FontWeight.w700, 9.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    ),
  );
}

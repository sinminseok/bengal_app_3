import 'package:bengal_app/utils/dataType.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/font.dart';

Widget Value_Detail_Widget(String iconUrl, String title, double mainValue,
    double suvValue, Size size) {
  return Container(
    width: 163.w,
    height: 28.h,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(4.w, 4.h, 0.w, 0.h),
          child: Image.asset(
            "assets/images/lobby/icons/$iconUrl.png",
            width: 20.w,
            height: 20.h,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 3.w),
          width: 120.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Font.lato(const Color(0xFF676D7C),
                    FontWeight.w400, 10.sp),
              ),
              Row(
                children: [
                  Text(
                    mainValue.asString(),
                    style: Font.lato(const Color(0xFF342B35),
                        FontWeight.w700, 10.sp),
                  ),
                  Text(
                    "(+${suvValue.asString()})",
                    style: Font.lato(const Color(0xFF766D84),
                        FontWeight.w700, 10.sp),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

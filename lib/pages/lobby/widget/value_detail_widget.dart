import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/font.dart';

Widget Value_Detail_Widget(String icon_url, String title, String main_value,
    String? suv_value, Size size) {
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
            "assets/images/lobby/icons/$icon_url.png",
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
                "$title",
                style: Font.lato(const Color(0xFF676D7C),
                    FontWeight.w400, 10.sp),
              ),
              Row(
                children: [
                  Text(
                    "$main_value",
                    style: Font.lato(const Color(0xFF342B35),
                        FontWeight.w700, 10.sp),
                  ),
                  Text(
                    "(+$suv_value)",
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

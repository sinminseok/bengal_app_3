import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/string_configuration.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';

Widget Game_Play_Widget(Size size, String title, String xper_value,
    String per_value, String ultimate_value) {
  return Container(
    width: 360.w,
    height: 100.h,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: kPrimaryColor),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Image.asset(
            "assets/images/lobby/game_img.png",
            width: 70.w,
            height: 70.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 17.h),
                child: Text(
                  "$title",
                  style:
                      Font.lato(const Color(0xFF342B35), FontWeight.bold, 18.sp),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                    width: 14.w,
                    height: 14.h,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 10.w, 0.h),
                    child: Text(
                      "+ $xper_value",
                      style: Font.lato(
                          const Color(0xFF302F85), FontWeight.bold, 10.sp),
                    ),
                  ),
                  Image.asset(
                    "assets/images/lobby/icons/appbar_icons/per_icon.png",
                    width: 14.w,
                    height: 14.h,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 10.w, 0.h),
                    child: Text(
                      "+ $per_value",
                      style: Font.lato(
                          const Color(0xFF302F85), FontWeight.bold, 10.sp),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0.h),
                child: Row(
                  children: [
                    Container(
                      width: 70.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 2),
                        child: Text(
                          "Ultimate  Lv $ultimate_value",
                          style: Font.lato(
                              const Color(0xFF746F7B), FontWeight.bold, 8.sp),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Image.asset(
            "assets/images/lobby/game_play_button.png",
            height: size.height * 0.08,
          ),
        ),
      ],
    ),
  );
}

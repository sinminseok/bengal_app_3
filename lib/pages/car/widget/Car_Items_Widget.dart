import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Car_Items_Widget(Size size){
  return  Container(
    margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
    height: 50.h,
    width: 260.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/common/cars/icons/lock_icon.png",
          width: 50.h,
          height: 50.h,
        ),
        Image.asset(
          "assets/images/common/cars/icons/empty_icon.png",
          width: 50.h,
          height: 50.h,
        ),
        Image.asset(
          "assets/images/common/cars/icons/ruby_icon.png",
          width: 50.h,
          height: 50.h,
        ),
        Image.asset(
          "assets/images/common/cars/icons/lock2_icon.png",
          width: 50.h,
          height: 50.h,
        ),
      ],
    ),
  );
}

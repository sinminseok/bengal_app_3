import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Car_Items_Widget(Size size){
  return  SizedBox(
    height: 50.h,
    width: 260.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/images/common/cars/icons/red_lock.png",
          width: 50.w,
          height: 50.h,
        ),
        Image.asset(
          "assets/images/common/cars/icons/green_lock.png",
          width: 50.w,
          height: 50.h,
        ),
        Image.asset(
          "assets/images/common/cars/icons/yellow_lock.png",
          width: 50.w,
          height: 50.h,
        ),
        Image.asset(
          "assets/images/common/cars/icons/blue_lock.png",
          width: 50.w,
          height: 50.h,
        ),
      ],
    ),
  );
}

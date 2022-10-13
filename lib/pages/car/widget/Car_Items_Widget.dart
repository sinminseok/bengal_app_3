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
          "assets/images/common/cars/icons/lock_icon.png",
          width: 50.w,
          height: 50.w,
        ),
        Image.asset(
          "assets/images/common/cars/icons/empty_icon.png",
          width: 50.w,
          height: 50.w,
        ),
        Image.asset(
          "assets/images/common/cars/icons/ruby_icon.png",
          width: 50.w,
          height: 50.w,
        ),
        Image.asset(
          "assets/images/common/cars/icons/lock2_icon.png",
          width: 50.w,
          height: 50.w,
        ),
      ],
    ),
  );
}

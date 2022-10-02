
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../types/constants.dart';

Widget Button_Frame(String text){
  return Center(
    child: Container(
        width: 175.w,
        height: 46.w,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff8B80F8).withOpacity(0.8),
                kPrimaryColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),

            borderRadius: BorderRadius.circular(30),
            color: kPrimaryColor

        ),

        margin: EdgeInsets.fromLTRB(0.w, 100.h, 0.w, 0.h),

        child: Center(child: Text("$text",style: TextStyle(color: Colors.white,fontSize: 14.sp),))),
  );
}
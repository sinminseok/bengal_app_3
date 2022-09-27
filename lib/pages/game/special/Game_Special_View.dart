import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Game_Special_Container.dart';

Widget Game_Special_View(Size size) {
  return Container(
    width: 360.w,
    height: 540.h,
    //추후 ListView Builder로 변경
    child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext ctx, int idx) {
          //게임 객체 전달
          return Game_Special_Container();
        }
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Game_Recommended_Container.dart';

Widget Game_Recommended_View(Size size){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 360.w,
      height: 600.h,
      //추후 ListView Builder로 변경
      child: ListView(
        children: [
          //Container에 필요한 데이터 추후 삽입
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          //Game_Special_Container(size),

        ],
      ),
    ),
  );
}

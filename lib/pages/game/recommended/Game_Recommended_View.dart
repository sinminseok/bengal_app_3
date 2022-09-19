import 'package:flutter/cupertino.dart';
import 'Game_Recommended_Container.dart';

Widget Game_Recommended_View(Size size){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: size.width * 0.9,
      height: size.height * 0.55,
      //추후 ListView Builder로 변경
      child: ListView(
        children: [
          //Container에 필요한 데이터 추후 삽입
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          Game_Recommended_Container(size),
          //Game_Special_Container(size),

        ],
      ),
    ),
  );
}

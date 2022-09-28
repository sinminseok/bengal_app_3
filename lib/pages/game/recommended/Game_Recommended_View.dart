import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/game.dart';
import 'Game_Recommended_Container.dart';

Widget Game_Recommended_View(List<GameInfo> gameList){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 360.w,
      height: 600.h,
      //추후 ListView Builder로 변경
      child: ListView.builder(
          itemCount: gameList.length,
          itemBuilder: (BuildContext ctx, int idx) {
            //게임 객체 전달
            return Game_Recommended_Container(gameList[idx]);
          }
      ),
    ),
  );
}

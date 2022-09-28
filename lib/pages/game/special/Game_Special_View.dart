import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/game.dart';
import 'Game_Special_Container.dart';

Widget Game_Special_View(List<GameInfo> gameList) {
  return Container(
    //width: 360.w,
    height: 540.h,
    child: ListView.builder(
        itemCount: gameList.length,
        itemBuilder: (BuildContext ctx, int idx) {
          return Game_Special_Container(gameList[idx]);
        }),
  );
}

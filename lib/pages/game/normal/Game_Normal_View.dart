import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/game.dart';
import 'Game_Normal_Container.dart';

Widget Game_Normal_View(List<GameInfo> gameList) {
  return Column(
    children: [
      Container(
          width: 360.w,
          height: 100.h,
          child: Image.asset("assets/images/game/Add_game_img.png")),
      Center(
        child: SizedBox(
          width: 360.w,
          height: 600.h,
          // shrinkwrap true
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1.w,
                mainAxisSpacing: 1.h,
                childAspectRatio: 1 / 0.35,
              ),
              itemCount: gameList.length,
              // shrinkWrap: true,

              itemBuilder: (BuildContext context, int idx) {
                return Center(
                  child: Game_Normal_Container(gameList[idx]),
                );
              }),
        ),
      )
    ],
  );
}

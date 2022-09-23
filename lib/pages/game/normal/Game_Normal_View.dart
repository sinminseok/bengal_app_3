import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Game_Normal_Container.dart';

Widget Game_Normal_View(Size size) {
  return Column(
    children: [
      Container(
          width: 360.w,
          height: 100.h,
          child: Image.asset("assets/images/game/Add_game_img.png")),
      Center(
        child:Container(
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
              itemCount: 10,
              // shrinkWrap: true,

              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Game_Normal_Container(size),
                );
              }),
        ),
      )
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/font.dart';
import '../../../models/game.dart';

Widget Game_Normal_Container(GameInfo game) {
  return Container(
    width: 175.w,
    height: 70.h,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      children: [

        Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(4.w, 10.h, 3.w, 0.h),
              child: Image.asset(
                "assets/images/game/game_img.png",
                width: 50.w,
                height: 50.h,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game.titleString(),
                    style: Font.lato(const Color(0xFF342B35),
                        FontWeight.bold, 13.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: 12.w,
                          height: 12.h,
                        ),
                        Text(
                          game.xPerPerPowerString(),
                          style: Font.lato(Colors.grey, FontWeight.bold, 10.sp),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 39.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                        child: Text(
                          "x1",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        )),
                  ),
                ],
              ),
            )

          ],
        ),
      ],
    ),
  );
}

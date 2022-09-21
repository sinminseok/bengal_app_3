import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Game_Normal_Container(Size size) {
  return Container(
    width: 175.w,
    height: 75.h,
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

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jewel Match",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                      Container(

                        child: Text(
                          "+0.03 Xper For",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
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
                      BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      )),
                ),
              ],
            )

          ],
        ),
      ],
    ),
  );
}

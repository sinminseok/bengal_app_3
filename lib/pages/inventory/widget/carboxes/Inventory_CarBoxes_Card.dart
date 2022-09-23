import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Inventory_CarBoxes_Card(

    Color color,
    String badge_title,
    String grade,
    int nft_id,
    // Colors colors,

  ) {



  return Stack(
    clipBehavior: Clip.none,
    children: [

      Container(
        width: 170.w,
        height: 160.h,
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.all(
              Radius.circular(6.0) //         <--- border radius here
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //car img
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),

              width:82.w,
              height: 100.h,
              child: Image.asset(
                "assets/images/inventory/car_boxes/$badge_title.png",

              ),
            ),
            //nftID
            Container(
              width: 76.w,
              height:24.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                    Radius.circular(30.0) //         <--- border radius here
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),

                    width:24.w,
                    height: 24.h,
                    decoration: BoxDecoration(
                        color: color, shape: BoxShape.circle),
                    child: Row(
                      children: [

                        Container(
                          margin: EdgeInsets.fromLTRB(8.5.w, 1.h, 0.w, 0.h),

                          child: Text(
                            "#",
                            style: TextStyle(color: Colors.white,fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    "$nft_id",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            //Level

          ],
        ),
      ),

      //추후 badge 이미지 받으면 변경
      Positioned(
        right: 110.w,
        child: Image.asset("assets/images/common/tags/tag_$grade.png",width: 65.w,),
      ),

      Positioned(
          right: 140.w,
          top: 5.h,
          child: Text("$badge_title",style: TextStyle(fontSize: 12,color: Colors.white),)
      ),
    ],
  );
}

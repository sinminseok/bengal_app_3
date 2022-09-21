import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Inventory_CarBoxes_Card(
    Size size,
    String badge_title,
    int nft_id,
    // Colors colors,

  ) {

  const card_color = Colors.red;

  return Stack(
    clipBehavior: Clip.none,
    children: [

      Container(
        width: 175.w,
        height: 200.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.all(
              Radius.circular(6.0) //         <--- border radius here
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //car img
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 30.h, 15.w, 0.h),

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
                        color: Colors.orange, shape: BoxShape.circle),
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
        right: size.width*0.265,
        child: Image.asset("assets/images/common/cars/badge.png",width: size.width*0.17,),
      ),
      Positioned(
        top: size.height*0.013,
        right: size.width*0.41,
        child: Image.asset("assets/images/common/cars/badge_bottom.png",width: size.width*0.02,height: size.height*0.05,fit: BoxFit.fitWidth,),
      ),
      Positioned(
          right: size.width*0.3,
          top: size.height*0.005,
          child: Text("$badge_title",style: TextStyle(fontSize: 12,color: Colors.white),)
      ),
    ],
  );
}

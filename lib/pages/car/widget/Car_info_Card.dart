import 'package:bengal_app/pages/car/Car_Detail_FrameView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget Car_info_Card(
    Size size,
    Color color,
    BuildContext context,
    String badge_title,
    String grade,

    int nft_id,

   ) {
  return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            width: 129.w,
            height: 137.h,
          margin: EdgeInsets.fromLTRB(10.w, 10.h, 5.w, 20.h),

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
                  margin: EdgeInsets.fromLTRB(1.w, 3.h, 1.w, 0.h),

                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      "assets/images/common/cars/car1.png",
                      width: 110.w,
                      height: 90.h,
                    ),
                  ),
                ),
                //nftID
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                  width: 79.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(
                        Radius.circular(30.0) //         <--- border radius here
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 16.w,
                        height:16.h,
                        decoration: BoxDecoration(
                            color: color, shape: BoxShape.circle),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4.w, 1.h, 3.w, 3.h),

                          child: Text(
                            "#",
                            style: TextStyle(color: Colors.white,fontSize: 11),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3.w, 2.h, 2.w, 0.h),
                        child: Text(
                          "$nft_id",
                          style: TextStyle(fontSize: 12,color: color),
                        ),
                      )
                    ],
                  ),
                ),
                //Level


              ],
            ),
          ),

        Positioned(
          top: 13.h,
          right: 79.w,
          child: Image.asset(
            "assets/images/common/tags/tag_$grade.png",
            width: 60.w,
          ),
        ),

        Positioned(
            right: 90.w,
            top: 17.h,
            child: Text(
              "$badge_title",
              style: TextStyle(fontSize: 12, color: Colors.white),
            )),
      ],
    );
}

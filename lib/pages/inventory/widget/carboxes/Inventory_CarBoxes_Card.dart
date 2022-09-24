import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../popup/car_box_popup.dart';

Widget Inventory_CarBoxes_Card(

    Color color,
    BuildContext context,
    String grade,
    int nft_id,
    // Colors colors,

  ) {

  return InkWell(
    onTap: (){
       Car_Box_popup().carbox_popup1(context,Colors.purple,"123435678","epic");

    },
    child: Stack(
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
                  "assets/images/inventory/car_boxes/box_$grade.png",

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

                      width:13.w,
                      height: 13.h,
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.circle),
                      child: Row(
                        children: [

                          Container(
                            margin: EdgeInsets.fromLTRB(3.5.w, 1.h, 0.w, 0.h),

                            child: Text(
                              "#",
                              style: TextStyle(color: Colors.white,fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Text(
                      "$nft_id",
                      style: TextStyle(fontSize: 10),
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
            child: Text("$grade",style: TextStyle(fontSize: 12,color: Colors.white),)
        ),
      ],
    ),
  );
}

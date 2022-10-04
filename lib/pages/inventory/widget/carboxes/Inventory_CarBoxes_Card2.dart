import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/box.dart';
import '../../../../utils/font.dart';
import '../../popup/car_box_popup.dart';

Widget Inventory_CarBoxes_Card2(Color color, BuildContext context, BoxNft nft) {
  return InkWell(
    onTap: () {
      Car_Box_popup()
          .carbox_popup1(context, nft);
    },
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 170.w,
          height: 270.h,
          decoration: BoxDecoration(
            border: Border.all(color: color),
            borderRadius: const BorderRadius.all(
                Radius.circular(6.0) //         <--- border radius here
                ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //car img
              Container(
                margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                width: 82.w,
                height: 100.h,
                child: Image.asset(
                  "assets/images/inventory/car_boxes/box_${nft.getBoxGradeString()}.png",
                ),
              ),
              //nftID
              Container(
                width: 76.w,
                height: 24.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(
                      Radius.circular(30.0) //         <--- border radius here
                      ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                      width: 13.w,
                      height: 13.h,
                      decoration:
                          BoxDecoration(color: color, shape: BoxShape.circle),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(3.5.w, 1.h, 0.w, 0.h),
                            child: Text(
                              "#",
                              style: Font.lato(
                                  Colors.white, FontWeight.w400, 9.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "${nft.id}",
                      style: Font.lato(
                          const Color(0xFF5D9CEC), FontWeight.bold, 10.sp),
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
          child: Image.asset(
            "assets/images/common/tags/tag_${nft.getBoxGradeString()}.png",
            width: 65.w,
          ),
        ),

        Positioned(
          right: 140.w,
          top: 5.h,
          child: Text(
            nft.getBoxGradeString(),
            style: Font.lato(Colors.white, FontWeight.bold, 8.sp),
          ),
        ),
      ],
    ),
  );
}

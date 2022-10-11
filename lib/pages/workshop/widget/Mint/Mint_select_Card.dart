import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/car.dart';
import '../../../../utils/font.dart';

Widget Mint_Select_Card(CarNft carNft) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
          width: 170.w,
          height: 152.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(),
                 Container(
                   margin: EdgeInsets.fromLTRB(0.w, 9.h, 10.w, 0.h),
                   child: Text(
                     "Lv${carNft.level} /Mint:${carNft.mintingCount}",
                     style: TextStyle(color: Colors.grey.shade600, fontSize: 10),
                   ),
                 ),
               ],
             ),
              Container(
                margin: EdgeInsets.fromLTRB(10.w, 9.h, 5.w, 0.h),
                width: 150.w,
                height: 86.h,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      carNft.getAssetImage(),
                      fit: BoxFit.fitWidth,
                    )),
              ),
              Center(
                child: Container(
                  width: 85.w,
                  height: 20.h,
                  margin: EdgeInsets.fromLTRB(0.w, 2.4.h, 0.w, 0.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 12.w,
                        height: 12.h,
                        margin: EdgeInsets.fromLTRB(1.w, 1.h, 0.w, 1.h),
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(3.4.w, 1.5.h, 1.w, 0.h),
                          child: Text(
                            "#",
                            style:
                            Font.lato(Colors.white, FontWeight.w400, 6.sp),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(3.w, 1.h, 8.w, 0.h),
                          child: Text(
                            "${carNft.id}",
                            style: Font.lato(
                                const Color(0xFF9196A5), FontWeight.bold, 10.sp),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          )),
      Positioned(
          left: -5.w,
          top: 6.h,
          child: SizedBox(
              width: 60.w,
              height: 20.h,
              child: Image.asset(
                "assets/images/common/tags/tag_normal.png",
                fit: BoxFit.fill,
              ))),
      Positioned(
          left: 5.w,
          top: 8.h,
          child: SizedBox(
              width: 60.w,
              height: 20.h,
              child: Text(carNft.getCarTypeString(),
                style: TextStyle(color: Colors.white,fontSize: 8),))),

    ],
  );
}

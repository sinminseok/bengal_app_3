import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Mint_Select_Card(String url) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
          width: 170.w,
          height: 152.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(86.w, 9.h, 10.w, 0.h),
                child: Text(
                  "Lv999 /Mint:9",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 10),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.w, 9.h, 5.w, 0.h),
                width: 150.w,
                height: 86.h,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      url,
                      fit: BoxFit.fitWidth,
                    )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(47.w, 6.h, 0.w, 0.h),
                child: Container(
                  width: 76.w,
                  height: 20.h,
                  margin: EdgeInsets.fromLTRB(0.w, 2.4.h, 0.w, 0.h),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 12.w,
                        height: 12.h,
                        margin: EdgeInsets.fromLTRB(4.w, 0.h, 3.w, 0.h),
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            "#",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "nft number",
                            style: TextStyle(fontSize: 10),
                          ))
                    ],
                  ),
                ),
              )
            ],
          )),
      Positioned(
          left: -5.w,
          top: 6.h,
          child: Container(
              width: 60.w,
              height: 20.h,
              child: Image.asset(
                "assets/images/common/tags/tag_normal.png",
                fit: BoxFit.fill,
              ))),
      Positioned(
          left: 5.w,
          top: 8.h,
          child: Container(
              width: 60.w,
              height: 20.h,
              child: Text("tag",style: TextStyle(color: Colors.white,fontSize: 8),))),

    ],
  );
}

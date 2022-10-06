
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Enhance_select_Card(String url){
  return Container(
      width: 100.w,
      height: 74.h,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius:
          const BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Container(
            margin:
            EdgeInsets.fromLTRB(5.w, 4.h, 5.w, 0.h),
            width: 90.w,
            height: 51.h,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  url,
                  fit: BoxFit.fitWidth,
                )),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
            child: Stack(
              children: [
                Container(
                  width: 90.w,
                  height: 12.86.h,
                  margin: EdgeInsets.fromLTRB(0.w, 2.4.h, 0.w, 0.h),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius:
                    const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 7.w,
                        height: 7.h,
                        margin: EdgeInsets.fromLTRB(
                            1.w, 0.h, 0.w, 0.h),
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text("#",style: TextStyle(fontSize: 5,color: Colors.white),),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),

                          child: Text("nft number",
                            style: TextStyle(fontSize: 6),))
                    ],
                  ),
                ),
                Container(
                    margin:
                    EdgeInsets.fromLTRB(58.w, 3.69.h, 1.w, 1.h),
                  width: 34.62.w,
                    height: 10.29.h,

                    child: Image.asset("assets/images/lobby/icons/limited_button.png"))
              ],
            ),
          )

        ],
      ));
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/car.dart';
import 'Inventory_Cars_Card2.dart';

Widget Inventory_Cars_View(Size size, CarNftList nftList){
  return Center(
    child: Container(
      // margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
      // width: 390.w,
      // height: 520.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.w,
            mainAxisSpacing: 15.h,
            childAspectRatio: 1 / 1.44,
          ),
          itemCount: nftList.list.length,
          // shrinkWrap: true,
          padding: EdgeInsets.only(
              left: 15.w, right: 15.w, top: 15.h, bottom: 15.h),
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Inventory_Car_Card2(
                  size, Colors.red, context, nftList.list[index]),
              // child: Market_Car_Card(
              //     size,context, "SPORTS","normal", 3, 12345, 10, 13, 14, 15, 16, 13),

            );
          }
      ),
    ),
  );
}



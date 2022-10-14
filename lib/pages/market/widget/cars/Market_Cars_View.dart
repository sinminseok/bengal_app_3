import 'package:bengal_app/models/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Market_Car_Card2.dart';

Widget Market_Cars_View(Size size, CarNftList nftList){
  return Center(
    child: Container(
      margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
      width: 390.w,
      height: 520.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.w,
            mainAxisSpacing: 10.h,
            childAspectRatio: 1 / 1.44,
          ),
          itemCount: nftList.list.length,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return Center(

              child: Market_Car_Card2(
                  size: size,
                  color: Colors.blue,
                  context: context,
                  car: nftList.list[index]),
              // child: Market_Car_Card(
              //     size,context, "SPORTS","normal", 3, 12345, 10, 13, 14, 15, 16, 13),
            );
          }
      ),
    ),
  );
}

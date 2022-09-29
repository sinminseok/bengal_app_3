import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Controller/storage_controller.dart';
import '../../../../models/car.dart';
import 'Inventory_Cars_Card.dart';
import 'Inventory_Cars_Card2.dart';

Widget Inventory_Cars_View(Size size, CarNftList nftList){
  return Center(
    child: Container(
      margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
      width: 390.w,
      height: 570.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:1.w,
            mainAxisSpacing: 3.w,
            childAspectRatio: 0.68,
          ),
          itemCount: nftList.list.length,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
              child: Center(
                child: Inventory_Car_Card2(
                    size, Colors.red, context, nftList.list[index]),
              ),
            );
          }
      ),
    ),
  );
}

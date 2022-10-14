import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/box.dart';
import 'Inventory_CarBoxes_Card2.dart';

Widget Inventory_CarBoxes_View(Size size, BoxNftList nftList){
  return Center(
    child:Container(
      width: 360.w,
      height: 520.h,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.w,
            mainAxisSpacing: 10.h,
            childAspectRatio: 1.13 / 1,
          ),
          itemCount: nftList.list.length,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return Center(

              child: Inventory_CarBoxes_Card2(
                  Colors.blue, context, nftList.list[index]),
            );
          }
      ),
    ),
  );
}

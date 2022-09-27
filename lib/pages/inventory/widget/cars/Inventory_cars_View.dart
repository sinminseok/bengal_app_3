import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Inventory_Cars_Card.dart';

Widget Inventory_Cars_View(Size size){
  return Center(
    child:  Container(
      width: 390.w,
      height: 553.h,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:0.w,
            mainAxisSpacing: 1.w,
            childAspectRatio: 1.h/1.3.h,
          ),
          itemCount: 10,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Inventory_Car_Card(
                  size,Colors.red,context, "SPORTS","ultimate", 3, 12345, 10, 13, 14, 15, 16, 13),
            );
          }
      ),
    ),
  );
}

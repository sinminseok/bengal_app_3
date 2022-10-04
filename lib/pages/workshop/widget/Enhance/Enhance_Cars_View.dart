import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Enhance_Cars_Card.dart';



Widget Enhance_Cars_View(Size size){
  return Center(
    child: Container(
      width: 360.w,
      height: 700.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:1.w,
            mainAxisSpacing: 2.h,
            childAspectRatio: 1 / 1.06,
          ),
          itemCount: 10,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){

              },
              child: Center(
                child: Enhance_Car_Card(
                  fun: null,
                  size:size,
                  context:context,
                  badge_title:   "SEDAN", grade: "epic", Mint_value: 3, nft_id: 12345, Level: 3,
                ),
              ),
            );
          }
      ),
    ),
  );
}

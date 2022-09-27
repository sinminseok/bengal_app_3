import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Inventory_CarBoxes_Card.dart';

Widget Inventory_CarBoxes_View(Size size){
  return Center(
    child:Container(
      width: 360.w,
      height: 600.h,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
            crossAxisSpacing:10.w,
            mainAxisSpacing: 1.h,
            childAspectRatio: 1.h / 1.h,
          ),
          itemCount: 10,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return Center(
              //Inventory_Card(Size size,
              //     String badge_title,
              //     int Mint_value,
              //     int nft_id,
              //     int Level,
              //     int Speed_value,
              //     int Luck_value,
              //     int Charge_value,
              //     int Repair_value,
              //     int distance)
              child: Inventory_CarBoxes_Card(
                  Colors.blue,context, "rare", 12345),
            );
          }
      ),
    ),
  );
}

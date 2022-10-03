import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../models/box.dart';
import 'Inventory_CarBoxes_Card.dart';
import 'Inventory_CarBoxes_Card2.dart';

Widget Inventory_CarBoxes_View(Size size, BoxNftList nftList){
  return Center(
    child:Container(
      width: 360.w,
      height: 600.h,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
            crossAxisSpacing: 0.w,
            mainAxisSpacing: 0.h,
            childAspectRatio: 1.4.h//1.h / 1.h,
          ),
          itemCount: nftList.list.length,
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
              child: Inventory_CarBoxes_Card2(
                  Colors.blue, context, nftList.list[index]),
            );
          }
      ),
    ),
  );
}

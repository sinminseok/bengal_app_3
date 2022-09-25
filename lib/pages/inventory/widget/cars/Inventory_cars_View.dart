import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Controller/storage_controller.dart';
import 'Inventory_Cars_Card.dart';
import 'Inventory_Cars_Card2.dart';

Widget Inventory_Cars_View(Size size){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: 360.w,
        height: 700.h,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing:10.w,
              mainAxisSpacing: 1.w,
              childAspectRatio: 1.h / 1.56.h,
            ),
            itemCount: StorageController().carNftList!.list.length,
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
                child: Inventory_Car_Card2(
                    size, Colors.red, context, StorageController().carNftList!.list[index]),
              );
            }
        ),
      ),
    ),
  );
}

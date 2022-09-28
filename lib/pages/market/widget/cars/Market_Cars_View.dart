import 'package:bengal_app/models/car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Controller/storage_controller.dart';
import '../../../../models/car.dart';
import 'Market_Car_Card.dart';
import 'Market_Car_Card2.dart';

Widget Market_Cars_View(Size size, CarNftList nftList){
  return Center(
    child: Container(
      width: 360.w,
      height: 600.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:3.w,
            mainAxisSpacing: 10.h,
            childAspectRatio: 1.h / 1.5.h,
          ),
          itemCount: nftList.list.length,
          // shrinkWrap: true,

          itemBuilder: (BuildContext context, int index) {
            return Center(
              //Inventory_Card(Size size,
              //     String badge_title,
              //     String grade
              //     int Mint_value,
              //     int nft_id,
              //     int Level,
              //     int Speed_value,
              //     int Luck_value,
              //     int Charge_value,
              //     int Repair_value,
              //     int distance)
              child: Market_Car_Card2(
                  size: size,context: context,carNft: nftList.list[index]),
              // child: Market_Car_Card(
              //     size,context, "SPORTS","normal", 3, 12345, 10, 13, 14, 15, 16, 13),
            );
          }
      ),
    ),
  );
}

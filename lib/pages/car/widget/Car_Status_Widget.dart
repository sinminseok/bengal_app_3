import 'package:bengal_app/models/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Car_Status_Widget(Size size,CarNft? carNft){
  return Container(
    margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),

    width: 390.w,
    height: 80.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //Speed Box
        Container(

          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/speed_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text("${carNft!.speed}",style: TextStyle(fontSize: 16),),
              Text(
                "Speed",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        Container(

          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/dice_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text("${carNft!.lucky}",style: TextStyle(fontSize: 16),),
              Text(
                "Luck",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        Container(

          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/charge_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text("${carNft!.charge}",style: TextStyle(fontSize: 16),),
              Text(
                "Charge",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        Container(

          width: 75.w,
          height: 80.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top:6.h),
                child: Image.asset(
                  "assets/images/common/cars/icons/repair_icon.png",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Text("${carNft!.repair}",style: TextStyle(fontSize: 16),),
              Text(
                "Repair",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        //Luck box

      ],
    ),
  );

}

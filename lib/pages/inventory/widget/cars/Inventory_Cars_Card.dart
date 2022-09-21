import 'package:bengal_app/pages/car/Car_Detail_FrameView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget Inventory_Car_Card(
    Size size,
    BuildContext context,
    String badge_title,
    int Mint_value,
    int nft_id,
    int Level,
    int Speed_value,
    int Luck_value,
    int Charge_value,
    int Repair_value,
    int distance) {
  return InkWell(
    onTap: (){

    },
    child: Stack(
      clipBehavior: Clip.none,
      children: [

        InkWell(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: Car_Detail_FrameView(

                    )));
          },
          child: Container(
            width: 170.w,
            height: 310.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(
                  Radius.circular(6.0) //         <--- border radius here
                  ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(110.w, 10.h, 15.w, 10.h),

                  child: Text(
                    "Mint: $Mint_value",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                //car img
                Image.asset(
                  "assets/images/common/cars/car1.png",
                  width: 150.w,
                ),
                //nftID
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                  width: 79.w,
                  height: 25.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                        Radius.circular(30.0) //         <--- border radius here
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          width: size.width * 0.04,
                          height: size.height * 0.04,
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.0073,
                              ),
                              Text(
                                "#",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(2.w, 2.h, 2.w, 0.h),

                        child: Text(
                          "$nft_id",
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                //Level
                Container(
                  margin: EdgeInsets.fromLTRB(60.w, 4.h, 15.w, 2.h),

                  child: Row(
                    children: [

                      Text(
                        "Level",
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, bottom: 6),
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon2.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "$Speed_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon3.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "$Luck_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon4.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "$Charge_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon1.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "$Repair_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 5.h),

                  child: LinearPercentIndicator(
                    barRadius: Radius.circular(10),
                    width: 140.w,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.red.shade400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset(
                        "assets/images/inventory/card_icons/card_car_icon.png",
                        width: 24.w,
                        height: 13.h,
                      ),
                    ),

                    Text(
                      "$distance km(Caution)",
                      style: TextStyle(fontSize: 10.4),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: size.width*0.30,
          child: Image.asset("assets/images/common/cars/badge.png",width: size.width*0.17,),
        ),
        Positioned(
          top: size.height*0.007,
          right: size.width*0.446,
          child: Image.asset("assets/images/common/cars/badge_bottom.png",width: size.width*0.02,height: size.height*0.05,fit: BoxFit.fitWidth,),
        ),
        Positioned(
          right: size.width*0.33,
          top: size.height*0.005,
          child: Text("$badge_title",style: TextStyle(fontSize: 12,color: Colors.white),)
        ),
      ],
    ),
  );
}

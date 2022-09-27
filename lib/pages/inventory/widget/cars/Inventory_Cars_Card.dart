import 'package:bengal_app/pages/car/Car_Detail_FrameView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget Inventory_Car_Card(
    Size size,
    Color color,
    BuildContext context,
    String badge_title,
    String grade,
    int Mint_value,
    int nft_id,
    int Level,
    int Speed_value,
    int Luck_value,
    int Charge_value,
    int Repair_value,
    int distance) {
  return InkWell(
    onTap: () {},
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    child: Car_Detail_FrameView(
                      car_buy: false,
                    )));
          },
          child: Container(
            width: 175.w,
            height: 280.h,
            decoration: BoxDecoration(
              border: Border.all(color: color),
              borderRadius: BorderRadius.all(
                  Radius.circular(6.0) //         <--- border radius here
                  ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.w, 0.h, 10.w, 0.h),

                      child: Text(
                        "Mint: $Mint_value",
                        style: TextStyle(fontSize: 10,color: color),
                      ),
                    ),
                  ],
                ),
                //car img
                Image.asset(
                  "assets/images/common/cars/car1.png",
                  width: 150.w,
                  fit: BoxFit.fitWidth,
                ),
                //nftID
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
                  width: 76.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(
                        Radius.circular(30.0) //         <--- border radius here
                        ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 12.w,
                        height:12.h,
                        decoration: BoxDecoration(
                            color: color, shape: BoxShape.circle),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 4.h),

                          child: Text(
                            "#",
                            style: TextStyle(color: Colors.white,fontSize: 9),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3.w, 2.h, 2.w, 0.h),
                        child: Text(
                          "$nft_id",
                          style: TextStyle(fontSize: 10,color: color),
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
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, bottom: 6),
                        child: Text(
                          "$Level",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 141.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 5.h),
                  child: LinearPercentIndicator(
                    barRadius: Radius.circular(10),
                    width: 140.w,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.green.shade400,
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
          right: 114.w,
          child: Image.asset(
            "assets/images/common/tags/tag_$grade.png",
            width: size.width * 0.17,
          ),
        ),

        Positioned(
            right: 123.w,
            top: 5.h,
            child: Text(
              "$badge_title",
              style: TextStyle(fontSize: 12, color: Colors.white),
            )),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../models/car.dart';
import '../../../../types/constants.dart';
import '../../../car/Car_Detail_FrameView2.dart';
import '../../popup/Market_popup.dart';

Widget Market_Car_Card2(
    Size size,
    BuildContext context,
    CarNft carNft,
    ) {
  return InkWell(
    onTap: (){
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: Car_Detail_FrameView2(
                carNft: carNft,
                carBuy: true,
              )));
    },
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 170.w,
          height: 290.h,
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
                margin: EdgeInsets.fromLTRB(110.w, 3.h, 0.w, 3.h),
                child: Text(
                  "Mint: ${carNft.mintingCount}",
                  style: TextStyle(fontSize: 12),
                ),
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

                width: 86.w,
                height: 23.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                      Radius.circular(30.0) //         <--- border radius here
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 15.w,
                      height: 15.h,
                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 7.w, 1.h),

                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0.h, 1.w, 2.h),

                        child: Text(
                          "#",
                          style: TextStyle(color: Colors.white,fontSize: 11),
                        ),
                      ),
                    ),

                    Text(
                      "${carNft.id}",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              //Level
              Container(
                margin: EdgeInsets.fromLTRB(63.w, 3.h, 3.w, 3.h),

                child: Row(
                  children: [
                    Text(
                      "Level",
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0, bottom: 6),
                      child: Text(
                        "${carNft.level}",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8.w, 1.h, 10.w, 5.h),

                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon2.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "${carNft.speed}",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon3.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "${carNft.lucky}",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon4.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "${carNft.charge}",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.w, 1.h, 10.w, 5.h),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/inventory/card_icons/card_icon1.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                        Text(
                          "${carNft.repair}",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "${carNft.price} HVH",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Market_popup().showDialog(size, context);
                    },
                    child: Container(
                      width: 70.w,
                      height: 26.h,
                      margin: EdgeInsets.fromLTRB(10.w, 7.h, 1.w, 5.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.all(Radius.circular(
                            30.0) //         <--- border radius here
                        ),
                      ),
                      child: Center(
                          child: Text(
                            "BUY",
                            style: TextStyle(color: kPrimaryColor, fontSize: 12),
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 110.w,
          child: Image.asset(
            "assets/images/common/tags/tag_${carNft.getCarGradeString()}.png",
            width: 65.w,
          ),
        ),
        Positioned(
            right: 120.w,
            top: 3.h,
            child: Text(
              carNft.getCarTypeString(),
              style: TextStyle(fontSize: 12, color: Colors.white),
            )),
      ],
    ),
  );
}

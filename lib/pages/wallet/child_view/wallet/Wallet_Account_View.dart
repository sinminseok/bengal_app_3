import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../types/constants.dart';
import '../../popup/address_popup.dart';
import '../trade/Trade_View.dart';
import '../transfer/Transfer_View.dart';

Widget Wallet_Account_View(
    BuildContext context,
    Size size,
    String address,
    double xper_value,
    double per_value,
    double hvh_value,
    double usdc_value,
    int car_count,
    int car_boxes_count) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
        child: InkWell(
          onTap: () {
            Wallet_popup().show_wallet_address(size, context);
          },
          child: Container(
            height: 66.h,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Address",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "$address",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                  child: Text(
                    "Detailed",
                    style: TextStyle(
                      fontSize: 13,
                      color: kPrimaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        width: 360.w,
        height: 280.h,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              height: 58.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/xper_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "XPER",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      "$xper_value",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              height: 58.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kPerColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/per_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                            "PER",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: kPerColor),
                          ),

                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      "$per_value",
                      style: TextStyle(fontSize: 16, color: kPerColor),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              height: 58.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: kCharColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lobby/icons/appbar_icons/havah_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "HVH",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kCharColor),
                        ),

                      ],
                    ),
                  )
             ,

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      "$hvh_value",
                      style: TextStyle(fontSize: 16, color: kCharColor),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.h),
              height: 58.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/wallet/icons/usdc_icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                        Text(
                          "USDC",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  )
                ,

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      "$usdc_value",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 65.h,
        width: 360.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 0.h),

              child: Row(
                children: [
                  Image.asset(
                    "assets/images/wallet/icons/car_icon.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Cars",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

              child: Text(
                "$car_count",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 1.3),
        child: Container(
          height: 65.h,
          width: 360.w,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 0.h),

                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/wallet/icons/box_icon.png",
                      width:40.w,
                      height: 40.h,
                    ),
                    Text(
                      "Car Boxes",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                child: Text(
                  "$car_boxes_count",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 30.h),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Transfer_View()));
                },
                child: Image.asset(
                    "assets/images/wallet/ToSpending_button.png",
                    width: 100.w,
                    height: 50.h,
                  ),

              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Trade_View()));
                },
                child: Image.asset(
                  "assets/images/wallet/Trade_button.png",
                  width: 100.w,
                  height: 50.h,
                ),
              ),
            ),
            Container(

              child: Image.asset(
                "assets/images/wallet/ToExternal_button.png",
                width: 100.w,
                height: 50.h,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

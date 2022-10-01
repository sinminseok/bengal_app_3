import 'package:bengal_app/types/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../models/wallet.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import '../../popup/address_popup.dart';
import '../trade/Trade_View.dart';
import '../transfer/Transfer_View.dart';

Widget Wallet_Account_View(
    BuildContext context,
    Size size,
    OnChainWallet onChainWallet) {
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
                        style: Font.lato(Colors.grey, FontWeight.bold, 13.sp),
                      ),
                      Text(
                        "GaL7sUm8f8A7",
                        style: Font.lato(Colors.black, FontWeight.bold, 16.sp),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                  child: Text(
                    "Detailed",
                    style: Font.lato(kPrimaryColor, FontWeight.bold, 12.sp),
                    ),
                  ),
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
                        Container(
                        margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "XPER",
                            style: Font.lato(Colors.grey, FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      onChainWallet.balanceString(CoinType.XPer),
                      style: Font.lato(Colors.grey, FontWeight.w400, 16.sp),
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
                        Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "PER",
                            style: Font.lato(kPerColor, FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      onChainWallet.balanceString(CoinType.Per),
                      style: Font.lato(kPerColor, FontWeight.w400, 16.sp),
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
                        Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "HVH",
                            style: Font.lato(kCharColor, FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  )
             ,

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      onChainWallet.balanceString(CoinType.Havah),
                      style: Font.lato(kCharColor, FontWeight.w400, 16.sp),
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
                        Container(
                          margin: EdgeInsets.fromLTRB(8.w, 0.h, 0.w, 0.h),
                          child: Text(
                            "USDC",
                            style: Font.lato(const Color(0xFF2775CA), FontWeight.bold, 16.sp),
                          ),
                        ),
                      ],
                    ),
                  )
                ,

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),

                    child: Text(
                      onChainWallet.balanceString(CoinType.Usdc),
                      style: Font.lato(kCharColor, FontWeight.w400, 16.sp),
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
                      style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

              child: Text(
                "0",
                style: Font.lato(kPrimaryColor, FontWeight.w400, 16.sp),
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
                      style: Font.lato(const Color(0xFF746F7B), FontWeight.bold, 16.sp),
                    ),
                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                child: Text(
                  "0",
                  style: Font.lato(kPrimaryColor, FontWeight.w400, 16.sp),
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
                    width: 115.w,
                    height: 40.h,
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
                  width: 115.w,
                  height: 40.h,
                ),
              ),
            ),
            Container(

              child: Image.asset(
                "assets/images/wallet/ToExternal_button.png",
                width: 115.w,
                height: 40.h,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

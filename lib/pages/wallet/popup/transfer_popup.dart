import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../controller/assets_controller.dart';
import '../../../types/common.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

class Transfer_popup {
  void transfer_popup(
      BuildContext context,
      bool isLocalWallet,
      CoinType coin,
      String transAmount) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: 360.h,
                      left: 265.w,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/images/common/cancel_button.png",
                            width: 40.w,
                          ))),
                  Container(
                      width: 300.w,
                      height: 350.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                              "TRANSFER",
                              style: Font.lato(Colors.white, FontWeight.bold, 18.sp),
                            )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 30.h, 170.w, 0.h),
                            child: Text(
                              "Transfer ${AssetsController().getCoinUpperCaseName(coin)}",
                              style: Font.lato(Colors.grey.shade500, FontWeight.w400, 14.sp),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 13.h, 15.w, 0.h),
                            width: 260.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: kPrimaryColor),
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 0.w, 0.h),
                                        child: Text(
                                          isLocalWallet ? "Spending" : "Wallet",
                                          style: Font.lato(kPrimaryColor, FontWeight.w400, 16.sp),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 4.h, 0.w, 0.h),
                                        width: 28.w,
                                        height: 16.h,
                                        child: const Center(
                                            child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: kPrimaryColor,
                                        ))),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          isLocalWallet ? "Wallet" : "Spending",
                                          style: Font.lato(kPrimaryColor, FontWeight.bold, 16.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                            width: 260.w,
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                  "Your Request",
                                  style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                ),
                                Text(
                                  transAmount,
                                  style: Font.lato(kPrimaryColor, FontWeight.bold, 16.sp),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 15.h),
                            width: 260.w,
                            height: 20.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                  "Fee",
                                  style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                ),
                                Text(
                                  "1",
                                  style: Font.lato(kPrimaryColor, FontWeight.bold, 16.sp),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 260.w,
                            height: 1.h,
                            color: Colors.grey.shade300,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              var ret = false;
                              isLocalWallet ?
                              ret = StorageController().credit(coin, double.parse(transAmount)) :
                              ret = StorageController().debit(coin, double.parse(transAmount));
                              var msg = "Transfer Success";
                              if (!ret) msg = "Transfer Fail";
                              Fluttertoast.showToast(
                                  msg: msg,
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                  gravity: ToastGravity.CENTER);
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                                  EdgeInsets.fromLTRB(0.w, 25.h, 0.w, 0.h),
                              decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Confirm",
                                  style: Font.lato(Colors.white, FontWeight.bold, 14.sp),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                ],
              )),
        );
      },
      animationType: DialogTransitionType.slideFromTopFade,
    );
  }
}

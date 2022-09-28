import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';

class Transfer_popup {
  void transfer_popup(BuildContext context) {
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Center(
          child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                              "TRANSFER",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 30.h, 170.w, 0.h),
                            child: Text(
                              "Transfer XPER",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(15.w, 13.h, 15.w, 0.h),
                            width: 260.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: kPrimaryColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            15.w, 10.h, 0.w, 0.h),
                                        child: Text(
                                          "Spending",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 16.sp),
                                        )),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 4.h, 0.w, 0.h),
                                        width: 28.w,
                                        height: 16.h,
                                        child: Center(
                                            child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: kPrimaryColor,
                                        ))),
                                    Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0.w, 10.h, 15.w, 0.h),
                                        child: Text(
                                          "Wallet",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 16.sp),
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

                                Text("Your Request",style: TextStyle(fontSize: 12.sp,color: Colors.grey.shade500),),
                                Text("12.81",style: TextStyle(fontSize: 16.sp,color: kPrimaryColor),),
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

                                Text("Fee",style: TextStyle(fontSize: 12,color: Colors.grey.shade500),),
                                Text("12.81",style: TextStyle(fontSize: 16,color: kPrimaryColor),),
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
                            },
                            child: Container(
                              width: 120.w,
                              height: 34.h,
                              margin:
                                  EdgeInsets.fromLTRB(0.w, 25.h, 0.w, 0.h),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Center(
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,fontSize: 14.sp),
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

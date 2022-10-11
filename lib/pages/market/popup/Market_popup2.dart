import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../controller/storage_controller.dart';
import '../../../common/string_configuration.dart';
import '../../../models/car.dart';
import '../../../types/constants.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';

class Market_popup2 {
  void showDialog(
    Size size,
    BuildContext context,
    CarNft car,
  ) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: DefaultTextStyle(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: 535.h,
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
                      height: 535.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 300.w,
                            height: 50.25.h,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: kPrimaryColor),
                            child: Center(
                                child: Text(
                                  StringConfiguration().uiString(
                                      UiStringType.MARKET_TAB_CARS_BUYPOPUP_01),
                                  style:
                                  Font.lato(Colors.white, FontWeight.bold, 16.sp),
                                )),
                          ),
                          Image.asset(
                            car.getAssetImage(),
                            width: 300.w,
                            height: 180.h,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.h),
                            height: 20.h,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/lobby/icons/circle_icon.png",
                                        width: 12.w,
                                        height: 12.h,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.w),
                                        child: Text(
                                          "${car.id}",
                                          style: Font.lato(const Color(0xFF342B35),
                                              FontWeight.w700, 14.sp),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5.w),
                                        child: Image.asset(
                                          "assets/images/lobby/icons/limited_button.png",
                                          width: 57.w,
                                          height: 18.h,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Container(
                            width: 260.w,
                            height: 141.h,
                            margin: EdgeInsets.fromLTRB(10.w, 20.h, 10.w, 0.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Column(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(20.w,10.h, 20.w, 0.h),
                              width: 200.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfiguration().uiString(UiStringType
                                        .MARKET_TAB_CARS_BUYPOPUP_02),
                                    style: Font.lato(const Color(0xFF746F7B),
                                        FontWeight.w400, 12.sp),
                                  ),
                                  Text(
                                    car.getCarTypeString(),
                                    style: Font.lato(const Color(0xFF8B80F8),
                                        FontWeight.bold, 12.sp),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 0.h),
                              width: 200.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfiguration().uiString(UiStringType
                                        .MARKET_TAB_CARS_BUYPOPUP_03),
                                    style: Font.lato(const Color(0xFF746F7B),
                                        FontWeight.w400, 12.sp),
                                  ),
                                  Text(
                                    car.getCarGradeString().toUpperCase(),
                                    style: Font.lato(const Color(0xFF8B80F8),
                                        FontWeight.bold, 12.sp),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 0.h),
                              width: 200.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfiguration().uiString(UiStringType
                                        .MARKET_TAB_CARS_BUYPOPUP_04),
                                    style: Font.lato(const Color(0xFF746F7B),
                                        FontWeight.w400, 12.sp),
                                  ),
                                  Text(
                                    "${car.level}",
                                    style: Font.lato(const Color(0xFF8B80F8),
                                        FontWeight.bold, 12.sp),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 0.h),
                              width: 200.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    StringConfiguration().uiString(UiStringType
                                        .MARKET_TAB_CARS_BUYPOPUP_05),
                                    style: Font.lato(const Color(0xFF746F7B),
                                        FontWeight.w400, 12.sp),
                                  ),
                                  Text(
                                    "${car.mintingCount}",
                                    style: Font.lato(const Color(0xFF8B80F8),
                                        FontWeight.bold, 12.sp),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 260.w,
                        height: 36.h,
                        margin: EdgeInsets.fromLTRB(20.w, 5.h, 20.w, 0.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: kPrimaryColor),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.w, 3.h, 20.w, 0.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                StringConfiguration().uiString(
                                    UiStringType.MARKET_TAB_CARS_BUYPOPUP_06),
                                style: Font.lato(
                                    kPrimaryColor, FontWeight.bold, 14.sp),
                              ),
                              Text(
                                "${car.price} ${StringConfiguration().uiString(UiStringType.TOKEN_NAME_03)}",
                                style: Font.lato(
                                    kPrimaryColor, FontWeight.bold, 14.sp),
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          StorageController().buyCar(car).then((ret) => {
                            if (ret) {
                              Fluttertoast.showToast(
                                  msg: StringConfiguration().uiString(UiStringType.TOAST_MESSAGE_09),
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                  gravity: ToastGravity.CENTER)
                            } else {
                              Fluttertoast.showToast(
                                  msg: StringConfiguration().uiString(UiStringType.TOAST_MESSAGE_08),
                                  backgroundColor: Colors.white,
                                  textColor: Colors.black,
                                  gravity: ToastGravity.CENTER)
                            }
                          });
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 120.w,
                          height: 34.h,
                          decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Text(
                              StringConfiguration().uiString(
                                  UiStringType.MARKET_TAB_CARS_BUYPOPUP_07),
                              style: Font.lato(
                                  Colors.white, FontWeight.bold, 14.sp),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ])));
        });
  }
}

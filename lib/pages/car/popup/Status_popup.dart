import 'dart:ui';

import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../models/car.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

class StatusPopup {
  int speedPoint = 0;
  int luckyPoint = 0;
  int chargePoint = 0;
  int repairPoint = 0;
  late CarNft car;

  int remainStatus() => car.status - speedPoint - luckyPoint - chargePoint - repairPoint;

  void updateSpeed(bool up) {
    if (up && 0 >= remainStatus()) {
      return;
    } else if (!up && 0 >= speedPoint) {
      return;
    }
    up ? speedPoint++ : speedPoint--;
  }

  void updateLuck(bool up) {
    if (up && 0 >= remainStatus()) {
      return;
    } else if (!up && 0 >= luckyPoint) {
      return;
    }
    up ? luckyPoint++ : luckyPoint--;
  }

  void updateCharge(bool up) {
    if (up && 0 >= remainStatus()) {
      return;
    } else if (!up && 0 >= chargePoint) {
      return;
    }
    up ? chargePoint++ : chargePoint--;
  }

  void updateRepair(bool up) {
    if (up && 0 >= remainStatus()) {
      return;
    } else if (!up && 0 >= repairPoint) {
      return;
    }
    up ? repairPoint++ : repairPoint--;
  }

  void popUp(BuildContext context, CarNft nft) {
    car = nft;

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return StatefulBuilder(
              builder: (context, setState){
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                content: DefaultTextStyle(
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            bottom: 420.h,
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
                            height: 420.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 300.w,
                                  height: 55.h,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: kPrimaryColor),
                                  child: Center(
                                      child: Text(
                                        "ADD STATUS POINTS",
                                        style: Font.lato(Colors.white, FontWeight.bold, 16.sp),
                                      )),
                                ),
                                Container(
                                    margin:
                                    EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 8.h),
                                    child: Text(
                                      "Available Points",
                                      style: Font.lato(kPrimaryColor, FontWeight.bold, 12.sp),
                                    )),
                                Text(
                                  "${remainStatus()}",
                                  style: Font.lato(kPrimaryColor, FontWeight.bold, 24.sp, TextDecoration.underline),
                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                                  width: 260.w,
                                  height: 37.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 15.w),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_speed.png",)),
                                            Text(
                                              "SPEED",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 15.w),
                                        width: 95.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  updateSpeed(false);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.remove_circle_outline,
                                                  color: 0 >= speedPoint ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,)
                                            ),
                                            Text(
                                              "${car.speed + speedPoint}",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                            InkWell(
                                                onTap: (){
                                                  updateSpeed(true);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.add_circle_outline,
                                                  color: 0 >= remainStatus() ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                                  width: 260.w,
                                  height: 37.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 15.w),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_dice.png",)),
                                            Text(
                                              "LUCK",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 15.w),
                                        width: 95.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  updateLuck(false);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.remove_circle_outline,
                                                  color: 0 >= luckyPoint ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,)),
                                            Text(
                                              "${car.lucky + luckyPoint}",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                            InkWell(
                                                onTap: (){
                                                  updateLuck(true);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.add_circle_outline,
                                                  color: 0 >= remainStatus() ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                                  width: 260.w,
                                  height: 37.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 15.w),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_charge.png",)),
                                            Text(
                                              "CHARGE",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 15.w),
                                        width: 95.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  updateCharge(false);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.remove_circle_outline,
                                                  color: 0 >= chargePoint ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,)),
                                            Text(
                                              "${car.charge + chargePoint}",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                            InkWell(
                                                onTap: (){
                                                  updateCharge(true);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.add_circle_outline,
                                                  color: 0 >= remainStatus() ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 20.h),
                                  width: 260.w,
                                  height: 37.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 15.w),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_repair.png",)),
                                            Text(
                                              "REPAIR",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 15.w),
                                        width: 95.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  updateRepair(false);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.remove_circle_outline,
                                                  color: 0 >= repairPoint ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,)),
                                            Text(
                                              "${car.repair + repairPoint}",
                                              style: Font.lato(Colors.grey.shade500, FontWeight.bold, 12.sp),
                                            ),
                                            InkWell(
                                                onTap: (){
                                                  updateRepair(true);
                                                  setState(() => {});
                                                },
                                                child: Icon(Icons.add_circle_outline,
                                                  color: 0 >= remainStatus() ? Colors.grey : kPrimaryColor,
                                                  size: 20.w,))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    StorageController().assignCarStatus(
                                        car: car,
                                        speed: speedPoint,
                                        lucky: luckyPoint,
                                        charge: chargePoint,
                                        repair: repairPoint);

                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 120.w,
                                    height: 34.h,
                                    margin:
                                    EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                                    decoration: const BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                    child: Center(
                                      child: Text(
                                        "Confirm",
                                        style: Font.lato(Colors.white, FontWeight.bold, 16.sp),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    )),
              );}
            );
          },
        );
      },
      animationType: DialogTransitionType.fade,
    );


  }
}

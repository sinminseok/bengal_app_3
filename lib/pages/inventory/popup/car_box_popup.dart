import 'dart:ui';

import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:vs_scrollbar/vs_scrollbar.dart';

import '../../../../types/constants.dart';
import '../../../models/box.dart';
import '../../../models/car.dart';

class Car_Box_popup {

  void _boxOpenProc(BuildContext context, BoxNft box) {
    Navigator.pop(context);
    StorageController().openBox(box).then((car) => {
      if (null != car) {
        carbox_popup3(context, car)
      }
    });
  }

  void carbox_popup1(BuildContext context , BoxNft nft) {

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          bottom: 470.h,
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
                          height: 470.h,
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
                                      "CAR BOX",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width:37.w,
                                      height: 49.h,
                                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 3.w, 10.h),

                                      child: Image.asset("assets/images/common/sell_button.png")),
                                  Container(
                                      width:123.w,
                                      height: 150.h,
                                      margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                                      child: Image.asset("assets/images/inventory/car_boxes/box_${nft.getBoxGradeString()}.png")),

                                  Container(
                                      width:37.w,
                                      height: 49.h,
                                      margin: EdgeInsets.fromLTRB(3.w, 0.h, 15.w, 10.h),

                                      child: Image.asset("assets/images/common/transfer_button.png"))
                                ],
                              ),
                              Container(
                                width: 76.w,
                                height:24.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0) //         <--- border radius here
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),

                                      width:13.w,
                                      height: 13.h,
                                      decoration: BoxDecoration(
                                          color: nft.getBoxGradeColor(), shape: BoxShape.circle),
                                      child: Row(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.fromLTRB(3.5.w, 1.h, 0.w, 0.h),

                                            child: Text(
                                              "#",
                                              style: TextStyle(color: Colors.white,fontSize: 9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Text(
                                      "${nft.id}",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                width: 260.w,
                                height: 1.h,
                                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                                color: Colors.grey.shade300,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    15.w, 13.h, 190.w, 0.h),
                                child:
                                Text("Minted From",style: TextStyle(color:   Colors.grey.shade600,fontSize: 14),),
                              ),

                              //Minted From
                              Row(
                                children: [

                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),

                                        width: 129.w,
                                        height: 112.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: kPrimaryColor),
                                            borderRadius: BorderRadius.all(Radius.circular(10))),

                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(3.w, 7.h, 4.w, 0.h),

                                              width: 110.w,
                                              height: 64.h,
                                              child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fitWidth,),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(3.w, 13.h, 3.w, 0.h),

                                              width: 62.w,
                                              height:16.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(30.0) //         <--- border radius here
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),

                                                    width:12.w,
                                                    height: 12.h,
                                                    decoration: BoxDecoration(
                                                        color: nft.getBoxGradeColor(), shape: BoxShape.circle),
                                                    child: Row(
                                                      children: [

                                                        Container(
                                                          margin: EdgeInsets.fromLTRB(3.5.w, 1.h, 0.w, 0.h),

                                                          child: Text(
                                                            "#",
                                                            style: TextStyle(color: Colors.white,fontSize: 8),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Text(
                                                    "${nft.id}",
                                                    style: TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 20.h,
                                        right: 83.w,
                                        child: Image.asset("assets/images/common/tags/tag_${nft.getBoxGradeString()}.png",width: 60.w,height: 20.h,),
                                      ),

                                      Positioned(
                                          right: 110.w,
                                          top: 23.h,
                                          child: Text(nft.getBoxGradeString(),style: TextStyle(fontSize: 8,color: Colors.white),)
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 10.h, 0.w, 0.h),

                                        width: 129.w,
                                        height: 112.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: kPrimaryColor),
                                            borderRadius: const BorderRadius.all(Radius.circular(10))),

                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(3.w, 7.h, 4.w, 0.h),

                                              width: 110.w,
                                              height: 64.h,
                                              child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fitWidth,),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(3.w, 13.h, 3.w, 0.h),

                                              width: 62.w,
                                              height:16.h,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: const BorderRadius.all(
                                                    Radius.circular(30.0) //         <--- border radius here
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),

                                                    width:12.w,
                                                    height: 12.h,
                                                    decoration: BoxDecoration(
                                                        color: nft.getBoxGradeColor(), shape: BoxShape.circle),
                                                    child: Row(
                                                      children: [

                                                        Container(
                                                          margin: EdgeInsets.fromLTRB(3.5.w, 1.h, 0.w, 0.h),

                                                          child: Text(
                                                            "#",
                                                            style: TextStyle(color: Colors.white,fontSize: 8),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Text(
                                                    "${nft.id}",
                                                    style: TextStyle(fontSize: 8),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: 20.h,
                                        right: 83.w,
                                        child: Image.asset("assets/images/common/tags/tag_${nft.getBoxGradeString()}.png",width: 60.w,height: 20.h,),
                                      ),

                                      Positioned(
                                          right: 110.w,
                                          top: 23.h,
                                          child: Text(nft.getBoxGradeString(),style: TextStyle(fontSize: 8,color: Colors.white),)
                                      ),
                                    ],
                                  ),

                                ],
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  carbox_popup2(context, nft);
                                },
                                child: Container(
                                  width: 120.w,
                                  height: 34.h,
                                  margin: EdgeInsets.fromLTRB(
                                      15.w, 23.h, 15.w, 0.h),
                                  decoration: const BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Center(
                                    child: Text(
                                      "Open",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
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
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }

  void carbox_popup2(BuildContext context , BoxNft box) {

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          bottom: 350.h,
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
                          height: 344.h,
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
                                      "CAR BOX",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                              ),
                              Container(
                                  width:123.w,
                                  height: 150.h,
                                  margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                                  child: Image.asset("assets/images/inventory/car_boxes/box_${box.getBoxGradeString()}.png")),
                              Container(
                                width: 76.w,
                                height:24.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(30.0) //         <--- border radius here
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),

                                      width:13.w,
                                      height: 13.h,
                                      decoration: BoxDecoration(
                                          color: box.getBoxGradeColor(), shape: BoxShape.circle),
                                      child: Row(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.fromLTRB(3.5.w, 1.h, 0.w, 0.h),

                                            child: Text(
                                              "#",
                                              style: TextStyle(color: Colors.white,fontSize: 9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Text(
                                      "${box.id}",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 5.h),

                                child: Text("Are you sure you want to open this",style: TextStyle(color: Colors.grey.shade500,fontSize: 12),),
                              ),
                              Container(
                                child: Text("Car box?",style: TextStyle(color: Colors.grey.shade500,fontSize: 14,fontWeight: FontWeight.bold),),
                              ),



                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 120.w,
                                      height: 34.h,
                                      margin: EdgeInsets.fromLTRB(
                                          24.w, 13.h, 0.w, 0.h),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: kPrimaryColor),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Center(
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontWeight: FontWeight.bold,fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      _boxOpenProc(context, box);
                                    },
                                    child: Container(
                                      width: 120.w,
                                      height: 34.h,
                                      margin: EdgeInsets.fromLTRB(
                                          15.w, 13.h, 15.w, 0.h),
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Center(
                                        child: Text(
                                          "Open",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  )),
            );
          },
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }

  void carbox_popup3(BuildContext context, CarNft car) {

    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              content: DefaultTextStyle(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          bottom: 350.h,
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
                          height: 346.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 300.w,
                                height: 40.h,


                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    color: Colors.grey),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width:46.w,
                                      height: 25.h,
                                      child: Image.asset("assets/images/common/cars/car_appbar_icon.png"),
                                    ),
                                    Text(
                                      " ${car.type} ",
                                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),
                                    ),
                                    Text(
                                      "/ ${car.grade}",
                                      style: TextStyle(color: Colors.white,fontSize: 12),
                                    ),
                                  ],
                                )
                              ),
                              SizedBox(
                                width: 300.w,
                                height: 177.h,
                                child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fitWidth,),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.w, 9.h, 15.w, 0.h),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/lobby/icons/circle_icon.png",
                                      width: 16.w,
                                      height: 16.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                      child: Text(
                                        "${car.id}",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      width: 57.w,
                                      height: 18.h,
                                      child: Image.asset(
                                        "assets/images/lobby/icons/limited_button.png",

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(13.w, 17.h, 15.w, 0.h),

                                width: 280.w,
                                height: 70.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    //Speed Box
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/speed_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.speed}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Speed",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/dice_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.lucky}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Luck",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/charge_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.charge}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Charge",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(

                                      width: 55.w,
                                      height: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.grey.shade200),
                                      child: Column(
                                        children: [

                                          Container(
                                            margin: EdgeInsets.only(top:6.h),
                                            child: Image.asset(
                                              "assets/images/common/cars/icons/repair_icon.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ),
                                          Text(
                                            "${car.repair}",
                                            style: TextStyle(fontSize: 12),),
                                          Text(
                                            "Repair",
                                            style: TextStyle(fontSize: 8, color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ),

                                    //Luck box

                                  ],
                                ),
                              ),

                            ],
                          )),
                    ],
                  )),
            );
          },
        );
      },
      animationType: DialogTransitionType.slideFromBottom,
    );
  }
}

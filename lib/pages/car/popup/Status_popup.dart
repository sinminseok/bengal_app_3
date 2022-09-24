import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';
import '../widget/Car_info_Card.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';

class Status_popup {
  void status_popup(BuildContext context) {
    double speed_value = 0.5;
    double luck_value = 0.5;
    double charge_value = 0.5;
    double repair_value = 0.5;

    bool sizeBool = false;


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
                    style: TextStyle(fontSize: 16, color: Colors.black),
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
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                      color: kPrimaryColor),
                                  child: Center(
                                      child: Text(
                                        "ADD STATUS POINTS",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )),
                                ),
                                Container(
                                    margin:
                                    EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 8.h),
                                    child: Text(
                                      "Available Points",
                                      style: TextStyle(
                                          color: kPrimaryColor, fontSize: 12),
                                    )),
                                Text(
                                  "33",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),



                                Container(
                                  margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),

                                  width: 260.w,
                                  height: 37.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            Container(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_speed.png",)),
                                            Text("SPEED",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold,fontSize: 12),),
                                          ],
                                        ),
                                      ),



                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            InkWell(

                                                onTap: (){
                                                  setState(() => speed_value -= 1);
                                                },

                                                child: Icon(Icons.remove_circle_outline,color: sizeBool==true?kPrimaryColor:Colors.grey,size: 20.w,)),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(6.w, 0.h, 6.w, 0.h),

                                                child: Text("$speed_value",style: TextStyle(color: Colors.grey.shade500,fontSize: 12),)),
                                            InkWell(
                                                onTap: (){
                                                  setState(() => speed_value += 1);
                                                },
                                                child: Icon(Icons.add_circle_outline,color: Colors.grey,size: 20.w,))


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
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            Container(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_dice.png",)),
                                            Text("LUCK",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold,fontSize: 12),),
                                          ],
                                        ),
                                      ),



                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  setState(() => luck_value -= 1);
                                                },
                                                child: Icon(Icons.remove_circle_outline,color: Colors.grey,size: 20.w,)),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(6.w, 0.h, 6.w, 0.h),

                                                child: Text("$luck_value",style: TextStyle(color: Colors.grey.shade500,fontSize: 12),)),
                                            InkWell(
                                                onTap: (){
                                                  setState(() => luck_value += 1);
                                                },
                                                child: Icon(Icons.add_circle_outline,color: Colors.grey,size: 20.w,))


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
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            Container(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_charge.png",)),
                                            Text("CHARGE",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold,fontSize: 12),),
                                          ],
                                        ),
                                      ),



                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  setState(() => charge_value -= 1);
                                                },
                                                child: Icon(Icons.remove_circle_outline,color: Colors.grey,size: 20.w,)),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(6.w, 0.h, 6.w, 0.h),

                                                child: Text("$charge_value",style: TextStyle(color: Colors.grey.shade500,fontSize: 12),)),
                                            InkWell(
                                                onTap: (){
                                                  setState(() => charge_value += 1);
                                                },
                                                child: Icon(Icons.add_circle_outline,color: Colors.grey,size: 20.w,))


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
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(20))),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            Container(
                                                width:26.w,
                                                height: 26.h,
                                                child: Image.asset("assets/images/common/cars/grey_icons/grey_repair.png",)),
                                            Text("REPAIR",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold,fontSize: 12),),
                                          ],
                                        ),
                                      ),



                                      Container(
                                        margin: EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),

                                        child: Row(
                                          children: [
                                            InkWell(
                                                onTap: (){
                                                  setState(() => repair_value -= 1);
                                                },
                                                child: Icon(Icons.remove_circle_outline,color: Colors.grey,size: 20.w,)),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(6.w, 0.h, 6.w, 0.h),

                                                child: Text("$repair_value",style: TextStyle(color: Colors.grey.shade500,fontSize: 12),)),
                                            InkWell(
                                                onTap: (){
                                                  setState(() => repair_value += 1);
                                                },
                                                child: Icon(Icons.add_circle_outline,color: Colors.grey,size: 20.w,))


                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 120.w,
                                    height: 34.h,
                                    margin:
                                    EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                    child: Center(
                                      child: Text(
                                        "Confirm",
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
              );}
            );
          },
        );
      },
      animationType: DialogTransitionType.fade,
    );


  }
}

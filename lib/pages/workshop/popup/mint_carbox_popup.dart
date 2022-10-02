import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

class Mint_Carbox_Popup {

  void showDialog(Size size, BuildContext context,int id) {
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
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Container(
                  width: 300.w,
                  height: 395.h,
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
                              "CAR BOX",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),

                      Container(
                        width: 188,
                          height: 170,
                          margin: EdgeInsets.fromLTRB(0.w, 20.h, 0.w, 0.h),

                          child: Image.asset("assets/images/inventory/car_boxes/box_ultimate.png")),
                      Text("Ultimate Car Box",style: TextStyle(color: Color(0xffDE4460)),),


                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 30.h, 0.w, 0.h),


                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),

                              child: ElevatedButton(

                                style: ButtonStyle(

                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                //  showDialog2(size, context);
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kPrimaryColor),
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(35))),
                                  child: Center(
                                    child: Text(
                                      "Later",
                                      style: TextStyle(color: kPrimaryColor,fontSize:12.sp ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),

                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  showDialog2(size, context);
                                },
                                child: Container(
                                  width: 80.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(35))),
                                  child: Center(
                                    child: Text(
                                      "Open Now",
                                      style: TextStyle(color: Colors.white,fontSize:10.sp ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  )),
            ),
          );
        });
  }

  void showDialog2(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Stack(
            children: [
              Positioned(
                  bottom: 650.h,
                  left: 290.w,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/common/cancel_button.png",
                        width: 40.w,
                      ))),
              Center(
                child: DefaultTextStyle(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  child: Container(
                      width: 300.w,
                      height: 460.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                              width: 320.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  color: kPrimaryColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 38,
                                    height: 15,
                                    child: Image.asset("assets/images/game/empty_car/empty_car1.png",color: Colors.white,),
                                  ),
                                  Text("SEDAN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.sp),),
                                  Text(" / ULTIMATE",style: TextStyle(color: Colors.white,fontSize: 14.sp),),
                                ],
                              )
                          ),
                          Container(
                              width: 300.w,
                              height: 176.46,

                              child: Image.asset("assets/images/common/cars/car1.png",fit: BoxFit.fill,)),
                          Container(
                            width: 170.w,
                            margin: EdgeInsets.fromLTRB(10.w, 7.h, 0.w, 0.h),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(
                                  // margin: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 1.h),
                                  margin: EdgeInsets.fromLTRB(4.w, 0.h, 0.w, 0.h),
                                  width:16.w,
                                  height: 16.h,
                                  decoration: BoxDecoration(
                                      color: Colors.black, shape: BoxShape.circle),
                                  child:
                                  Container(
                                    margin: EdgeInsets.fromLTRB(4.3.w, 1.3.h, 0.w, 0.h),

                                    child: Text(
                                      "#",
                                      style: TextStyle(color: Colors.white,fontSize: 9.sp),
                                    ),
                                  ),


                                ),

                                Container(
                                  margin: EdgeInsets.fromLTRB(3.w, 0.h, 0.w, 0.h),
                                  child: Text(
                                    "123432578",
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ),
                                Container(
                                    width: 53.w,height: 16.h,
                                    margin: EdgeInsets.fromLTRB(0.w, 2.h, 0.w, 0.h),
                                    child: Image.asset("assets/images/lobby/icons/limited_button.png",fit: BoxFit.fill,)),

                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 10.h),

                            width: 260.w,
                            height: 70.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/speed_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                          child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                      Text(
                                        "Speed",
                                        style: TextStyle(fontSize: 8.sp, color: Colors.grey),
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
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/dice_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                          child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                      Text(
                                        "Luck",
                                        style: TextStyle(fontSize: 8.sp, color: Colors.grey),
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
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/charge_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                          child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                      Text(
                                        "Charge",
                                        style: TextStyle(fontSize: 8.sp, color: Colors.grey),
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
                                        margin: EdgeInsets.only(top:10.h),
                                        child: Image.asset(
                                          "assets/images/common/cars/icons/repair_icon.png",
                                          width: 20.w,
                                          height: 20.h,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 1.h),

                                          child: Text("21",style: TextStyle(fontSize: 12.sp),)),
                                      Text(
                                        "Repair",
                                        style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),

                                //Luck box

                              ],
                            ),
                          ),


                          ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: 120.w,
                              height: 37.h,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(35)),
                              ),
                              child: Center(
                                child: Text(
                                  "Next Box",
                                  style: TextStyle(color: Colors.white,fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              )
            ],
          );
        });
  }
}
